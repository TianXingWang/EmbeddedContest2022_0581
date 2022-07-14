package com.example.test1

import android.app.AlertDialog
import android.content.DialogInterface
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.Toast
import java.io.BufferedReader
import java.io.InputStreamReader
import java.lang.StringBuilder
import java.net.HttpURLConnection
import java.net.URL
import java.util.*
import kotlin.concurrent.thread

class MainActivity : AppCompatActivity()
{
    var foodtaken = "1"
    override fun onCreate(savedInstanceState: Bundle?)
    {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.first_layout)
        supportActionBar?.hide()
        val albuilder :AlertDialog.Builder = AlertDialog.Builder(this@MainActivity)
        albuilder.setTitle("请稍候").setMessage("您的餐品正在运输中")
        albuilder.setPositiveButton("确定") { dialog, which ->
            Toast.makeText(this, "请稍候", Toast.LENGTH_SHORT).show()
        }
        if (foodtaken == "1")
            albuilder.show()
        val timer = Timer()
        class TimerQuest : TimerTask()
        {
            override fun run()
            {
                val recondition = getConditions()
                Log.d("Main123", recondition)
                if (recondition == "1" && foodtaken == "1")
                {
                    val intent = Intent(this@MainActivity, reminder::class.java)
                    startActivityForResult(intent, 1)
                    //this@MainActivity.onPause()
                }
            }
        }
        val button1 : Button = findViewById(R.id.button)
        button1.setOnClickListener{
            //Toast.makeText(this, "Hello", Toast.LENGTH_SHORT).show()
            foodtaken = getConditions()
            //timer.schedule(TimerQuest(), 0)
        }
        val foodtimer = Timer()
        class FoodQuest : TimerTask()
        {
            override fun run()
            {
                foodtaken = "1"
            }
        }
        timer.schedule(TimerQuest(), 0, 5000)
        foodtimer.schedule(FoodQuest(), 0, 30000)
    }

    private fun getConditions() : String
    {
        val response = StringBuilder()
        //thread {
            val connection: HttpURLConnection?
            val url = URL("http://182.92.165.188/1.json")
            connection = url.openConnection() as HttpURLConnection
            connection.connectTimeout = 10000
            connection.readTimeout = 10000
            val input = connection.inputStream
            val reader = BufferedReader(InputStreamReader(input))
            reader.use {
                reader.forEachLine {
                    response.append(it)
                }
            }
            Log.d("Main", response.toString())
            connection.disconnect()
        //}
        return response.toString()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?)
    {
        super.onActivityResult(requestCode, resultCode, data)
        when (requestCode)
        {
            1 -> if (resultCode == RESULT_OK)
            {
                val returnedData = data?.getStringExtra("data_return")
                Log.d("FirstActivity", "returned data is $returnedData")
                if (returnedData == "0")
                    foodtaken = "0"
            }
        }
    }

}