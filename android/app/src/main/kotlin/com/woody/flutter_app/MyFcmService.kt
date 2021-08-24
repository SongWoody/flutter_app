package com.woody.flutter_app

import android.util.Log
import com.google.firebase.messaging.FirebaseMessagingService

class MyFcmService: FirebaseMessagingService() {

    override fun onNewToken(p0: String) {
        super.onNewToken(p0)
        Log.i("MyFcmService","firebase token :$p0")
    }
}