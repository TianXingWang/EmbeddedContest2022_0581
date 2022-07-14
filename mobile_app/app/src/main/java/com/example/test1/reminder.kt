package com.example.test1

import android.app.AlertDialog
import android.app.NotificationManager
import android.content.Context
import android.content.Intent
import android.media.MediaPlayer
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.CountDownTimer
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.core.app.NotificationCompat

class reminder : AppCompatActivity()
{
    private val mediaPlayer = MediaPlayer()
    override fun onCreate(savedInstanceState: Bundle?)
    {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_reminder)
        supportActionBar?.hide()
        mediaPlayer.start()
        val counttext : TextView = findViewById(R.id.ctTime)
        val countDown = object : CountDownTimer(36000, 60)
        {
            override fun onTick(p0: Long)
            {
                counttext.text = (p0 / 1200).toString()
            }

            override fun onFinish()
            {
                //this@reminder.onDestroy()
                mediaPlayer.reset()
                finish()
            }
        }
        countDown.start()
        val button : Button = findViewById(R.id.button)
        button.setOnClickListener {
            val intent = Intent()
            intent.putExtra("data_return", "0")
            setResult(RESULT_OK, intent)
            mediaPlayer.reset()
            finish()
        }
        val albuilder : AlertDialog.Builder = AlertDialog.Builder(this)
        albuilder.setTitle("注意").setMessage("餐品已送达，请于30秒内取出")
        albuilder.setPositiveButton("确定"){dialog, which ->
            //Toast.makeText(this, "请稍候", Toast.LENGTH_SHORT).show()
        }
        albuilder.show()
        /*val manager = getSystemService(Context.NOTIFICATION_SERVICE) as
                NotificationManager
        val notification = NotificationCompat.Builder(this, "normal")
            .setContentTitle("This is content title")
            .setContentText("This is content text")
            .build()
        manager.notify(1, notification)*/
    }
    private fun initMediaPlayer() {
        val assetManager = assets
        val fd = assetManager.openFd("alertring.mp3")
        mediaPlayer.setDataSource(fd.fileDescriptor, fd.startOffset, fd.length)
        mediaPlayer.prepare()
    }
    override fun onDestroy() {
        super.onDestroy()
        mediaPlayer.stop()
        mediaPlayer.release()
    }
}