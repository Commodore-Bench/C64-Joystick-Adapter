#include <Arduino.h>
#include <SegaController.h>
#include "the64.h"
#include "joystick.h"
#include "constants.h"
#include "settings.h"
#include "led_control.h"
#include "key_mode.h"

extern unsigned long pwr_timer;
extern bool swap_ports;
extern bool c_to_jump;
extern bool swap_ab;

extern SegaController gamepad_1;
extern word gamepad_1_state;
extern word gamepad_1_last;
extern SegaController gamepad_2;
extern word gamepad_2_state;
extern word gamepad_2_last;

extern unsigned long autofire_timer[PORT_COUNT][KEY_COUNT];
extern bool autofire_enabled[PORT_COUNT][KEY_COUNT];
extern byte key_state[PORT_COUNT][KEY_COUNT];

namespace mode_default {
  void init_mode() {
    pwr_timer = millis() + LED_SHUTOFF;
    pinMode(PIN_MODE, INPUT_PULLUP);
  }

  void check_autofire_timers(const int port_id, const byte key_id, const uint16_t the64_code) {
    /* Handle auto fire */
    if (autofire_enabled[port_id][key_id]) {
      if (millis() > autofire_timer[port_id][key_id]) {
        flip_state(port_id, key_id, the64_code, AUTO_FIRE_PERIOD_ON, AUTO_FIRE_PERIOD_OFF);
      } else {
        handle_state(port_id, key_id, the64_code);
      }
    } else {
      clear_state(port_id, key_id, the64_code);
    }
  }

  /* Handle fire button, a normal press of the button will always take precedence
  * over auto fire. Autofire can be activated by holding MODE and then pushing
  * the button. */
  void handle_autofire(const int port_id, const byte key_id, const uint16_t the64_code, const word key_mask, const word gamepad_state, const word gamepad_last) {
    #ifdef ENABLE_AUTO_FIRE
      if (is_key_active(gamepad_state, SC_BTN_MODE)) {
        /* Toggle autofire mode at the release of a button, but only do so while
        * the MODE button is being held on the controller. */
        if (!is_key_active(gamepad_state, key_mask) && is_key_active(gamepad_last, key_mask)) {
          autofire_enabled[port_id][key_id] = !autofire_enabled[port_id][key_id];
        }

        /* Keep auto fire running */
        check_autofire_timers(port_id, key_id, the64_code);
      } else {
        /* Process button presses normally, run autofire if not being held. */
        if (is_key_active(gamepad_state, key_mask)) {
          Joystick.button_press(the64_code);
        } else {
          check_autofire_timers(port_id, key_id, the64_code);
        }
      }
    #else
      Joystick.button_press(the64_code);
    #endif
  }

  /* Update and send the joystick state to the computer. */
  void update_joystick(const int port_id, const word gamepad_state, const word gamepad_last) {
    if (gamepad_state != gamepad_last) {
      #ifdef PWR_ACTIVITY
        boost_pwr();
        pwr_timer = millis() + LED_FADE_DELAY;
      #endif
    }

    if (is_key_active(gamepad_state, SC_BTN_LEFT)) Joystick.left();
    if (is_key_active(gamepad_state, SC_BTN_RIGHT)) Joystick.right();
    if (is_key_active(gamepad_state, SC_BTN_DOWN)) Joystick.down();

    /* Replace UP direction with the C button */
    if (!c_to_jump && is_key_active(gamepad_state, SC_BTN_UP)) Joystick.up();
    if (is_key_active(gamepad_state, SC_BTN_C)) Joystick.up();

    /* Swap left and right fire button */
    if (swap_ab) {
      handle_autofire(port_id, KEY_A, THE64_BTN_FIRE_R, SC_BTN_A, gamepad_state, gamepad_last); // Fire Left
      handle_autofire(port_id, KEY_B, THE64_BTN_FIRE_L, SC_BTN_B, gamepad_state, gamepad_last); // Fire Right
    } else {
      handle_autofire(port_id, KEY_A, THE64_BTN_FIRE_L, SC_BTN_A, gamepad_state, gamepad_last); // Fire Left
      handle_autofire(port_id, KEY_B, THE64_BTN_FIRE_R, SC_BTN_B, gamepad_state, gamepad_last); // Fire Right
    }

    if (is_key_active(gamepad_state, SC_BTN_MODE)) {
      if (is_key_active(gamepad_state, SC_BTN_X)) Joystick.button_press(THE64_BTN_TL);          // TL
      if (is_key_active(gamepad_state, SC_BTN_Z)) Joystick.button_press(THE64_BTN_TR);          // TR
    } else {
      if (is_key_active(gamepad_state, SC_BTN_X)) Joystick.button_press(THE64_BTN_A);           // A
      if (is_key_active(gamepad_state, SC_BTN_Z)) Joystick.button_press(THE64_BTN_C);           // C
    }
    if (is_key_active(gamepad_state, SC_BTN_Y)) Joystick.button_press(THE64_BTN_B);             // B
    if (is_key_active(gamepad_state, SC_BTN_START)) Joystick.button_press(THE64_BTN_MENU);      // Menu

    Joystick.usb_update();
  }

  /* Takes care of updating key states, update_joystick takes care of actually
  * sending the button states over USB.
  */
  void update_port(const int port_id) {
    switch (port_id) {
      case PORT_1:
        gamepad_1_state = gamepad_1.getState();
        update_joystick((swap_ports ? PORT_2 : PORT_1), gamepad_1_state, gamepad_1_last);
        gamepad_1_last = gamepad_1_state;
        break;

      case PORT_2:
      default:
        gamepad_2_state = gamepad_2.getState();
        update_joystick((swap_ports ? PORT_1 : PORT_2), gamepad_2_state, gamepad_2_last);
        gamepad_2_last = gamepad_2_state;
        break;
    }
  }

  void handle_mode() {
    if (millis() > pwr_timer) {
      #ifdef PWR_ACTIVITY_MIN
        fade_pwr(PWR_ACTIVITY_MIN);
      #else
        fade_pwr();
      #endif
      pwr_timer = millis() + LED_FADE_SPEED;
    }

    debounce_joystick_key(PORT_1, KEY_MODE, false);
    Joystick.reset();
    update_port(PORT_2);
  }
}