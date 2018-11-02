package com.example.appname

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class EntryActivity: AppCompatActivity() {
    override fun onCreate(state: Bundle?) {
        super.onCreate(state)

        val label = TextView(this@EntryActivity)
        label.setText("https://github.com/richRemer/make-android")

        setContentView(label)
    }
}
