package com.example.travo_app

import android.view.WindowManager
import io.flutter.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val channelID = "lib.string.convert"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channelID
        ).setMethodCallHandler { call, result ->
            if (call.method == "toUpperCase") {
                val data = toUpperCaseString(call.arguments.toString())
                Log.println(Log.ASSERT, "tag", data)
                result.success(data)
            } else if (call.method == "screenShot") {
                window.setFlags(
                    WindowManager.LayoutParams.FLAG_SECURE,
                    WindowManager.LayoutParams.FLAG_SECURE,
                )
                Log.println(Log.ASSERT, "tag", "screenShot")

            }else if (call.method == "removeScreenShot") {
                window.clearFlags(
                    WindowManager.LayoutParams.FLAG_SECURE,
                )
                Log.println(Log.ASSERT, "tag", "removeScreenShot")

            }

        }
    }

    private fun toUpperCaseString(data: String): String {
        return data.uppercase();
    }
}
