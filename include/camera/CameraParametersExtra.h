// Overload this file in your device specific config if you need
// to add extra camera parameters.
// A typical file would look like this:
/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define CAMERA_PARAMETERS_EXTRA_C \
const char CameraParameters::KEY_SKY_COLOREXT_COORDINATES_R[] = "pantech-color-extraction-coordinates-r"; \
const char CameraParameters::KEY_SKY_COLOREXT_COORDINATES_G[] = "pantech-color-extraction-coordinates-g"; \
const char CameraParameters::KEY_SKY_COLOREXT_COORDINATES_B[] = "pantech-color-extraction-coordinates-b"; \
const char CameraParameters::KEY_SKY_COLOREXTRACTION[] = "pantech-colorextraction"; \
const char CameraParameters::KEY_SKY_IPL_MODE[] = "pantech-ipl-mode"; \
const char CameraParameters::SKY_IPL_OFF[] = "off"; \
const char CameraParameters::SKY_COLOREXT_OFF[] = "off"; \
const char CameraParameters::KEY_SUPPORTED_SKY_COLOREXTRACTION[] = "T"; \
const char CameraParameters::KEY_SKY_COLOREXT_COORDINATES[] = "T"; \
const char CameraParameters::KEY_SKY_COLOREXT_RGB_R[] = "pantech-colorextraction-rgb-r"; \
const char CameraParameters::KEY_SKY_COLOREXT_RGB_G[] = "pantech-colorextraction-rgb-g"; \
const char CameraParameters::KEY_SKY_COLOREXT_RGB_B[] = "pantech-colorextraction-rgb-b"; \
const char CameraParameters::SKY_COLOREXT_TOUCH[] = "colorext-touch"; \
const char CameraParameters::SKY_COLOREXT_RED[] = "colorext-red"; \
const char CameraParameters::SKY_COLOREXT_GREEN[] = "colorext-green"; \
const char CameraParameters::SKY_COLOREXT_BLUE[] = "colorext-blue"; \
const char CameraParameters::SKY_COLOREXT_YELLOW[] = "colorext-yellow"; \
const char CameraParameters::SKY_IPL_CAMNOTE[] = "pantech-ipl-camnote"; \
const char CameraParameters::SKY_IPL_BEAUTY[] = "pantech-ipl-beauty"; \
const char CameraParameters::SKY_IPL_MINIATURE[] = "pantech-ipl-miniature"; \
const char CameraParameters::SKY_IPL_CARTOON[] = "pantech-ipl-cartoon"; \
const char CameraParameters::SKY_IPL_CARTOON_FRONT[] = "cartoon-front"; \
const char CameraParameters::KEY_SHUTTER_SOUND[] = "shutter-sound"; \
const char CameraParameters::KEY_CAMNOTE[] = "camnote"; \
const char CameraParameters::KEY_CAMNOTE_MODE[] = "camnote-mode"; \
const char CameraParameters::KEY_VT[] = "pantech-vt"; \
const char CameraParameters::KEY_MULTISHOT[] = "pantech-multishot"; \
const char CameraParameters::MULTISHOT_OFF[] = "off"; \
const char CameraParameters::MULTISHOT_ON[] = "on"; \
const char CameraParameters::VT_OFF[] = "off"; \
const char CameraParameters::REFLECT_OFF[] = "off"; \
const char CameraParameters::CAMNOTE_WB_C[] = "wb-c"; \
const char CameraParameters::CAMNOTE_OFF[] = "off"; \
const char CameraParameters::CAMNOTE_ON[] = "on"; \
const char CameraParameters::CAMNOTE_WB_B[] = "wb-b"; \
const char CameraParameters::CAMNOTE_BL_B[] = "bl-b"; \
const char CameraParameters::CAMNOTE_NORMAL[] = "normal"; \
const char CameraParameters::EFFECT_WHITEBOARD_C[] = "whiteboard-c"; \
const char CameraParameters::EFFECT_BLACKBOARD_C[] = "blackboard-c"; \
const char CameraParameters::KEY_SKY_IPL_VALUE_2[] = "value-2"; \
const char CameraParameters::KEY_SKY_IPL_VALUE_1[] = "value-1"; \
const char CameraParameters::KEY_REFLECT[] = "pantech-reflect"; \
const char CameraParameters::KEY_FOCUS_STEP[] = "pantech-focus-step"; \
const char CameraParameters::KEY_FOCUS_COORDINATES[] = "pantech-focus-coordinates"; \
const char CameraParameters::KEY_SUPPORTED_SHUTTER_SOUND[] = "pantech-supported-shutter-sound"; \
const char CameraParameters::KEY_SUPPORTED_MULTISHOT[] = "pantech-supported-multishot"; \
const char CameraParameters::KEY_SUPPORTED_REFLECT[] = "pantech-supported-reflect"; \
const char CameraParameters::SCENE_MODE_INDOOR[] = "indoor"; \
const char CameraParameters::SCENE_MODE_TEXT[] = "text"; \
const char CameraParameters::FLASH_MODE_TORCH_FLASH[] = "tourch-flash"; \
const char CameraParameters::SHUTTER_SOUND_OFF[] = "off"; \
const char CameraParameters::SHUTTER_SOUND_ON[] = "on"; \
const char CameraParameters::H324MVT_ON[] = "on"; \
const char CameraParameters::HDVT_ON[] = "off"; \
const char CameraParameters::AUTO_EXPOSURE_OFF[] = "off"; \
const char CameraParameters::WHITE_BALANCE_OFF[] = "off"; \
const char CameraParameters::REFLECT_MIRROR[] = "mirror"; \
const char CameraParameters::REFLECT_WATER[] = "water"; \
const char CameraParameters::REFLECT_MIRROR_WATER[] = "mirror-water"; \
void CameraParameters::getColorExtractionCoordinates(int *x, int *y) const {}; \
void CameraParameters::setColorExtractionCoordinates(int x, int y) {}; \
void CameraParameters::getColorExtractionRGB_B(int *x, int *y) const {}; \
void CameraParameters::setColorExtractionRGB_B(int x, int y) {} \
void CameraParameters::getColorExtractionRGB_G(int *x, int *y) const {}; \
void CameraParameters::setColorExtractionRGB_G(int x, int y) {}; \
void CameraParameters::getColorExtractionRGB_R(int *x, int *y) const {}; \
void CameraParameters::setColorExtractionRGB_R(int x, int y) {}; \
void CameraParameters::getFocusCoordinates(int *x, int *y) const {}; \
void CameraParameters::setFocusCoordinates(int x, int y) {};

#define CAMERA_PARAMETERS_EXTRA_H \
    static const char KEY_SKY_COLOREXT_COORDINATES_R[]; \
    static const char KEY_SKY_COLOREXT_COORDINATES_G[]; \
    static const char KEY_SKY_COLOREXT_COORDINATES_B[]; \
    static const char KEY_SKY_COLOREXTRACTION[]; \
    static const char KEY_SKY_IPL_MODE[]; \
    static const char SKY_IPL_OFF[]; \
    static const char SKY_COLOREXT_OFF[]; \
    static const char KEY_SUPPORTED_SKY_COLOREXTRACTION[]; \
    static const char KEY_SKY_COLOREXT_COORDINATES[]; \
    static const char KEY_SKY_COLOREXT_RGB_R[]; \
    static const char KEY_SKY_COLOREXT_RGB_G[]; \
    static const char KEY_SKY_COLOREXT_RGB_B[]; \
    static const char SKY_COLOREXT_TOUCH[]; \
    static const char SKY_COLOREXT_RED[]; \
    static const char SKY_COLOREXT_GREEN[]; \
    static const char SKY_COLOREXT_BLUE[]; \
    static const char SKY_COLOREXT_YELLOW[]; \
    static const char SKY_IPL_CAMNOTE[]; \
    static const char SKY_IPL_BEAUTY[]; \
    static const char SKY_IPL_MINIATURE[]; \
    static const char SKY_IPL_CARTOON[]; \
    static const char SKY_IPL_CARTOON_FRONT[]; \
    static const char KEY_SHUTTER_SOUND[]; \
    static const char KEY_CAMNOTE[]; \
    static const char KEY_CAMNOTE_MODE[]; \
    static const char KEY_VT[]; \
    static const char VT_OFF[]; \
    static const char REFLECT_OFF[]; \
    static const char CAMNOTE_WB_C[]; \
    static const char CAMNOTE_OFF[]; \
    static const char CAMNOTE_ON[]; \
    static const char CAMNOTE_WB_B[]; \
    static const char CAMNOTE_BL_B[]; \
    static const char CAMNOTE_NORMAL[]; \
    static const char EFFECT_WHITEBOARD_C[]; \
    static const char EFFECT_BLACKBOARD_C[]; \
    static const char KEY_MULTISHOT[]; \
    static const char MULTISHOT_OFF[]; \
    static const char MULTISHOT_ON[]; \
    static const char KEY_SKY_IPL_VALUE_2[]; \
    static const char KEY_SKY_IPL_VALUE_1[]; \
    static const char KEY_REFLECT[]; \
    static const char KEY_FOCUS_STEP[]; \
    static const char KEY_FOCUS_COORDINATES[]; \
    static const char KEY_SUPPORTED_SHUTTER_SOUND[]; \
    static const char KEY_SUPPORTED_MULTISHOT[]; \
    static const char KEY_SUPPORTED_REFLECT[]; \
    static const char SCENE_MODE_INDOOR[]; \
    static const char SCENE_MODE_TEXT[]; \
    static const char FLASH_MODE_TORCH_FLASH[]; \
    static const char SHUTTER_SOUND_OFF[]; \
    static const char SHUTTER_SOUND_ON[]; \
    static const char H324MVT_ON[]; \
    static const char HDVT_ON[]; \
    static const char AUTO_EXPOSURE_OFF[]; \
    static const char WHITE_BALANCE_OFF[]; \
    static const char REFLECT_MIRROR[]; \
    static const char REFLECT_WATER[]; \
    static const char REFLECT_MIRROR_WATER[]; \
    void getColorExtractionCoordinates(int *x, int *y) const; \
    void setColorExtractionCoordinates(int x, int y); \
    void getColorExtractionRGB_B(int *x, int *y) const; \
    void setColorExtractionRGB_B(int x, int y); \
    void getColorExtractionRGB_G(int *x, int *y) const; \
    void setColorExtractionRGB_G(int x, int y); \
    void getColorExtractionRGB_R(int *x, int *y) const; \
    void setColorExtractionRGB_R(int x, int y); \
    void getFocusCoordinates(int *x, int *y) const; \
    void setFocusCoordinates(int x, int y);
