/*
 * Copyright (C) 2014 The CyanogenMod Project
 * Copyright (C) 2018 The LineageOS Project
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

package org.lineageos.hardware;

import android.util.Slog;

import org.lineageos.internal.util.FileUtils;

public class DisplayColorCalibration {

    private static final String TAG = "DisplayColorCalibration";

    private static final String COLOR_FILE = "/sys/devices/13900000.dsim/lcd/panel/mdnie/sensorRGB";

    public static int getMaxValue() {
        return 255;
    }

    public static int getMinValue() {
        return 0;
    }

    public static int getDefValue() {
        return 255;
    }

    public static boolean isSupported() {
        return FileUtils.isFileWritable(COLOR_FILE);
    }

    public static String getCurColors()  {
        return FileUtils.readOneLine(COLOR_FILE);
    }

    public static boolean setColors(String colors) {
        Slog.i(TAG, "colors=" + colors);
        return FileUtils.writeLine(COLOR_FILE, colors);
    }

}
