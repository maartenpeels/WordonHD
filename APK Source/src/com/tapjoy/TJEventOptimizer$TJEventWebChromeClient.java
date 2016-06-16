// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

// Referenced classes of package com.tapjoy:
//            TJEventOptimizer, TapjoyLog

private class <init> extends WebChromeClient
{

    final TJEventOptimizer this$0;

    public boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        TapjoyLog.d(TJEventOptimizer.access$400(), (new StringBuilder()).append("JS CONSOLE: ").append(consolemessage.message()).append(" -- From line ").append(consolemessage.lineNumber()).append(" of ").append(consolemessage.sourceId()).toString());
        return true;
    }

    private ()
    {
        this$0 = TJEventOptimizer.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
