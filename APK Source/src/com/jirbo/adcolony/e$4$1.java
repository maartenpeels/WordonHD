// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import android.app.Activity;
import android.content.DialogInterface;
import android.media.MediaPlayer;
import android.util.Log;
import android.widget.MediaController;

// Referenced classes of package com.jirbo.adcolony:
//            e

class a
    implements android.content.Interface.OnClickListener
{

    final a a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (a.a.x != null)
        {
            a.a.x.onCompletion(a.a.r);
        }
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/jirbo/adcolony/e$4

/* anonymous class */
    class e._cls4
        implements android.media.MediaPlayer.OnErrorListener
    {

        final e a;

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            Log.d(a.a, (new StringBuilder()).append("Error: ").append(i).append(",").append(j).toString());
            a.o = -1;
            a.p = -1;
            if (a.w != null)
            {
                a.w.hide();
            }
            if (a.A != null && a.A.onError(a.r, i, j))
            {
                return true;
            }
            if (a.getWindowToken() != null)
            {
                a.b().getResources();
                if (i == 200)
                {
                    mediaplayer = "Invalid progressive playback";
                } else
                {
                    mediaplayer = "Unknown error";
                }
                (new android.app.AlertDialog.Builder(a.b())).setTitle("ERROR").setMessage(mediaplayer).setPositiveButton("OKAY", new e._cls4._cls1(this)).setCancelable(false).show();
            }
            return true;
        }

            
            {
                a = e1;
                super();
            }
    }

}
