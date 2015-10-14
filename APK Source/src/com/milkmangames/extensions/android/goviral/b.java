// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.milkmangames.extensions.android.goviral;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.text.Html;
import android.util.Base64;
import android.util.Log;
import c.m.x.a.gv.aq;
import c.m.x.a.gv.at;
import com.adobe.fre.FREArray;
import com.adobe.fre.FREBitmapData;
import com.adobe.fre.FREByteArray;
import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.facebook.AccessToken;
import com.facebook.AppEventsLogger;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.RequestAsyncTask;
import com.facebook.Session;
import com.facebook.SessionDefaultAudience;
import com.facebook.SessionLoginBehavior;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.SharedPreferencesTokenCachingStrategy;
import com.facebook.model.OpenGraphAction;
import com.facebook.model.OpenGraphObject;
import com.facebook.widget.FacebookDialog;
import com.facebook.widget.WebDialog;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONStringer;

// Referenced classes of package com.milkmangames.extensions.android.goviral:
//            r, c, n, a, 
//            v, q, s, t, 
//            u, w, d, e, 
//            f, g, h, i, 
//            j, k, l, m, 
//            o, p

public final class com.milkmangames.extensions.android.goviral.b extends FREContext
    implements at
{
    private final class a
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                int i1 = afreobject[1].getAsInt();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, i1);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private a()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    private final class aa
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = (FREArray)afreobject[0];
                FREArray frearray = (FREArray)afreobject[1];
                afreobject = afreobject[2].getAsString();
                frecontext = com.milkmangames.extensions.android.goviral.b.a(frecontext, frearray);
                com.milkmangames.extensions.android.goviral.b.c(a, frecontext, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private aa()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        aa(byte byte0)
        {
            this();
        }
    }

    private final class ab
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = (FREArray)afreobject[0];
                FREArray frearray = (FREArray)afreobject[1];
                afreobject = afreobject[2].getAsString();
                frecontext = com.milkmangames.extensions.android.goviral.b.a(frecontext, frearray);
                com.milkmangames.extensions.android.goviral.b.d(a, frecontext, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private ab()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        ab(byte byte0)
        {
            this();
        }
    }

    private final class ac
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                afreobject = afreobject[1].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private ac()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        ac(byte byte0)
        {
            this();
        }
    }

    private final class ad
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                FREBitmapData frebitmapdata = (FREBitmapData)afreobject[1];
                afreobject = afreobject[2].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, frebitmapdata, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private ad()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        ad(byte byte0)
        {
            this();
        }
    }

    private final class b
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a;
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.d());
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private b()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        b(byte byte0)
        {
            this();
        }
    }

    private final class c
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                boolean flag = afreobject[2].getAsBool();
                FREBitmapData frebitmapdata = (FREBitmapData)afreobject[3];
                String s2 = afreobject[4].getAsString();
                afreobject = afreobject[5].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, flag, frebitmapdata, s2, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private c()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        c(byte byte0)
        {
            this();
        }
    }

    private abstract class d
        implements FREFunction
    {

        protected com.milkmangames.extensions.android.goviral.b b;
        final com.milkmangames.extensions.android.goviral.b c;

        protected abstract FREObject a(FREObject afreobject[]);

        public FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a(afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.d("[GVExtension]", "Call failed");
                Log.e("[GVExtension]", frecontext.getMessage());
                frecontext.printStackTrace();
                return null;
            }
            return frecontext;
        }

        public d()
        {
            c = com.milkmangames.extensions.android.goviral.b.this;
            super();
            b = com.milkmangames.extensions.android.goviral.b.this;
        }
    }

    private final class e
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                FREArray frearray = (FREArray)afreobject[2];
                FREArray frearray1 = (FREArray)afreobject[3];
                String s2 = afreobject[4].getAsString();
                String s3 = afreobject[5].getAsString();
                boolean flag = afreobject[6].getAsBool();
                afreobject = com.milkmangames.extensions.android.goviral.b.a(frearray, frearray1);
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, afreobject, s2, s3, flag);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private e()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        e(byte byte0)
        {
            this();
        }
    }

    private final class f
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            String s1;
            boolean flag;
            boolean flag1;
            try
            {
                s1 = afreobject[0].getAsString();
                flag = afreobject[1].getAsBool();
                flag1 = afreobject[2].getAsBool();
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            if (!flag) goto _L2; else goto _L1
_L1:
            frecontext = com.milkmangames.extensions.android.goviral.b.a((FREArray)afreobject[3], (FREArray)afreobject[4]);
_L4:
            if (!flag1)
            {
                break MISSING_BLOCK_LABEL_70;
            }
            double d1 = afreobject[5].getAsDouble();
            com.milkmangames.extensions.android.goviral.b.a(a, s1, d1, frecontext);
            return null;
            com.milkmangames.extensions.android.goviral.b.a(a, s1, frecontext);
            return null;
_L2:
            frecontext = null;
            if (true) goto _L4; else goto _L3
_L3:
        }

        private f()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        f(byte byte0)
        {
            this();
        }
    }

    private final class g
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                FREBitmapData frebitmapdata = (FREBitmapData)afreobject[1];
                String s1 = afreobject[2].getAsString();
                String s2 = afreobject[3].getAsString();
                boolean flag = afreobject[4].getAsBool();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, frebitmapdata, s1, s2, flag);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private g()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        g(byte byte0)
        {
            this();
        }
    }

    private final class h
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                com.milkmangames.extensions.android.goviral.b.e(a, frecontext);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private h()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        h(byte byte0)
        {
            this();
        }
    }

    private final class i
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                boolean flag = afreobject[2].getAsBool();
                afreobject = afreobject[5].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, flag, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private i()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        i(byte byte0)
        {
            this();
        }
    }

    private final class j
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                boolean flag = afreobject[2].getAsBool();
                FREBitmapData frebitmapdata = (FREBitmapData)afreobject[3];
                afreobject = afreobject[6].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, flag, frebitmapdata, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private j()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        j(byte byte0)
        {
            this();
        }
    }

    private final class k
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a;
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.h());
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private k()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        k(byte byte0)
        {
            this();
        }
    }

    private final class l
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a;
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.i());
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private l()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        l(byte byte0)
        {
            this();
        }
    }

    private final class m
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                afreobject[1].getAsString();
                boolean flag = afreobject[2].getAsBool();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, flag);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private m()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        m(byte byte0)
        {
            this();
        }
    }

    private final class n
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                Log.d("[GVExtension]", "call inner init");
                com.milkmangames.extensions.android.goviral.b.l(a);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private n()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        n(byte byte0)
        {
            this();
        }
    }

    private final class o
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a;
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.f());
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private o()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        o(byte byte0)
        {
            this();
        }
    }

    private final class p
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a;
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.e());
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private p()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        p(byte byte0)
        {
            this();
        }
    }

    private final class q
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.b(a, frecontext));
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private q()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        q(byte byte0)
        {
            this();
        }
    }

    private final class r
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.n(a));
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private r()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        r(byte byte0)
        {
            this();
        }
    }

    private final class s
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = a;
                com.milkmangames.extensions.android.goviral.b.g();
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private s()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        s(byte byte0)
        {
            this();
        }
    }

    private final class t
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                com.milkmangames.extensions.android.goviral.b.f(a, frecontext);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private t()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        t(byte byte0)
        {
            this();
        }
    }

    private final class u
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.m(a));
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private u()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        u(byte byte0)
        {
            this();
        }
    }

    private final class v
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.c(a, frecontext));
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private v()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        v(byte byte0)
        {
            this();
        }
    }

    private final class w
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                frecontext = FREObject.newObject(com.milkmangames.extensions.android.goviral.b.d(a, frecontext));
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
                return null;
            }
            return frecontext;
        }

        private w()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        w(byte byte0)
        {
            this();
        }
    }

    private final class x
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                String s2 = afreobject[2].getAsString();
                boolean flag = afreobject[3].getAsBool();
                String s3 = afreobject[4].getAsString();
                String s4 = afreobject[5].getAsString();
                afreobject = afreobject[6].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, s2, flag, s3, s4, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private x()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        x(byte byte0)
        {
            this();
        }
    }

    private final class y
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                String s2 = afreobject[2].getAsString();
                boolean flag = afreobject[3].getAsBool();
                String s3 = afreobject[4].getAsString();
                String s4 = afreobject[5].getAsString();
                FREBitmapData frebitmapdata = (FREBitmapData)afreobject[6];
                afreobject[7].getAsString();
                String s5 = afreobject[8].getAsString();
                afreobject = afreobject[9].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, s2, flag, s3, s4, frebitmapdata, s5, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private y()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        y(byte byte0)
        {
            this();
        }
    }

    private final class z
        implements FREFunction
    {

        final com.milkmangames.extensions.android.goviral.b a;

        public final FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            try
            {
                frecontext = afreobject[0].getAsString();
                String s1 = afreobject[1].getAsString();
                String s2 = afreobject[2].getAsString();
                boolean flag = afreobject[3].getAsBool();
                String s3 = afreobject[4].getAsString();
                String s4 = afreobject[5].getAsString();
                FREByteArray frebytearray = (FREByteArray)afreobject[6];
                String s5 = afreobject[7].getAsString();
                String s6 = afreobject[8].getAsString();
                afreobject = afreobject[9].getAsString();
                com.milkmangames.extensions.android.goviral.b.a(a, frecontext, s1, s2, flag, s3, s4, frebytearray, s5, s6, afreobject);
            }
            // Misplaced declaration of an exception variable
            catch (FREContext frecontext)
            {
                Log.e("[GVExtension]", frecontext.getMessage());
            }
            return null;
        }

        private z()
        {
            a = com.milkmangames.extensions.android.goviral.b.this;
            super();
        }

        z(byte byte0)
        {
            this();
        }
    }


    public static final String a[] = {
        "com.twitdroid", "com.twitter.android", "com.handmark.tweetcaster", "com.thedeck.android"
    };
    public static FREContext c;
    public static com.milkmangames.extensions.android.goviral.a d;
    public static boolean e = false;
    public Activity b;
    private aq f;
    private SharedPreferences g;
    private String h;
    private RequestAsyncTask i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private AppEventsLogger s;
    private com.facebook.widget.FacebookDialog.PendingCall t;
    private com.facebook.widget.FacebookDialog.Callback u;

    public com.milkmangames.extensions.android.goviral.b()
    {
        b = null;
    }

    protected static int a(com.facebook.FacebookRequestError.Category category)
    {
        byte byte0 = 0;
        if (category == com.facebook.FacebookRequestError.Category.AUTHENTICATION_REOPEN_SESSION)
        {
            byte0 = 2;
        } else
        {
            if (category == com.facebook.FacebookRequestError.Category.AUTHENTICATION_RETRY)
            {
                return 1;
            }
            if (category == com.facebook.FacebookRequestError.Category.BAD_REQUEST)
            {
                return -2;
            }
            if (category == com.facebook.FacebookRequestError.Category.OTHER)
            {
                return -1;
            }
            if (category == com.facebook.FacebookRequestError.Category.PERMISSION)
            {
                return 3;
            }
            if (category == com.facebook.FacebookRequestError.Category.SERVER)
            {
                return 4;
            }
            if (category == com.facebook.FacebookRequestError.Category.THROTTLING)
            {
                return 5;
            }
        }
        return byte0;
    }

    private static Bitmap a(FREBitmapData frebitmapdata)
    {
        int j1;
        j1 = 1;
        Log.d("[GVExtension]", (new StringBuilder("Parse bitmap ")).append(frebitmapdata).toString());
        int i1;
        frebitmapdata.acquire();
        i1 = frebitmapdata.getWidth();
        j1 = frebitmapdata.getHeight();
        Object obj;
        obj = frebitmapdata.getBits();
        Log.d("[GVExtension]", (new StringBuilder("Image size:")).append(i1).append(",").append(j1).toString());
        int k1 = j1;
        j1 = i1;
        i1 = k1;
_L1:
        if (obj != null)
        {
            Log.d("[GVExtension]", "inData");
            Log.d("[GVExtension]", "create");
            Bitmap bitmap = Bitmap.createBitmap(j1, i1, android.graphics.Bitmap.Config.ARGB_8888);
            bitmap.copyPixelsFromBuffer(((java.nio.Buffer) (obj)));
            obj = Bitmap.createBitmap(j1, i1, android.graphics.Bitmap.Config.ARGB_8888);
            for (int l1 = 0; l1 < i1; l1++)
            {
                for (int j2 = 0; j2 < j1; j2++)
                {
                    int k2 = bitmap.getPixel(j2, l1);
                    ((Bitmap) (obj)).setPixel(j2, l1, (k2 & 0xff) << 16 | (k2 >> 24 & 0xff) << 24 | (k2 >> 8 & 0xff) << 8 | k2 >> 16 & 0xff);
                }

            }

            try
            {
                frebitmapdata.release();
            }
            // Misplaced declaration of an exception variable
            catch (FREBitmapData frebitmapdata)
            {
                Log.d("[GVExtension]", "Failed releasing image");
                return ((Bitmap) (obj));
            }
            return ((Bitmap) (obj));
        } else
        {
            Log.d("[GVExtension]", "In data not valid");
            return null;
        }
        obj;
        i1 = 1;
_L2:
        Log.d("[GVExtension]", "Encoding failed!");
        ((Exception) (obj)).printStackTrace();
        obj = null;
          goto _L1
        obj;
        boolean flag = true;
        j1 = i1;
        i1 = ((flag) ? 1 : 0);
          goto _L2
        obj;
        int i2 = i1;
        i1 = j1;
        j1 = i2;
          goto _L2
    }

    private static Uri a(String s1, FREBitmapData frebitmapdata)
    {
        String s2 = s1.concat(".jpeg");
        Object obj;
        int k1;
        int l1;
        try
        {
            frebitmapdata.acquire();
            k1 = frebitmapdata.getWidth();
            l1 = frebitmapdata.getHeight();
            obj = frebitmapdata.getBits();
            Log.d("[GVExtension]", (new StringBuilder("Image size:")).append(k1).append(",").append(l1).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.e("[GVExtension]", "Encoding failed!");
            return null;
        }
        s1 = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/").append(s2).toString());
        try
        {
            s1 = new FileOutputStream(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.d("[GVExtension]", "File caching failed");
            s1 = null;
        }
        if (s1 != null)
        {
            Bitmap bitmap = Bitmap.createBitmap(k1, l1, android.graphics.Bitmap.Config.ARGB_8888);
            bitmap.copyPixelsFromBuffer(((java.nio.Buffer) (obj)));
            obj = Bitmap.createBitmap(k1, l1, android.graphics.Bitmap.Config.ARGB_8888);
            for (int i1 = 0; i1 < l1; i1++)
            {
                for (int j1 = 0; j1 < k1; j1++)
                {
                    int i2 = bitmap.getPixel(j1, i1);
                    ((Bitmap) (obj)).setPixel(j1, i1, (i2 & 0xff) << 16 | (i2 >> 24 & 0xff) << 24 | (i2 >> 8 & 0xff) << 8 | i2 >> 16 & 0xff);
                }

            }

            ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, s1);
            try
            {
                s1.flush();
                s1.close();
                frebitmapdata.release();
            }
            // Misplaced declaration of an exception variable
            catch (String s1)
            {
                Log.d("[GVExtension]", "Failed releasing image");
            }
            return Uri.fromFile(new File(Environment.getExternalStorageDirectory(), s2));
        } else
        {
            Log.e("[GVExtension]", "Failed to write temp image stream.");
            return null;
        }
    }

    private static Uri a(String s1, FREByteArray frebytearray)
    {
        File file;
        ByteBuffer bytebuffer;
        try
        {
            frebytearray.acquire();
            bytebuffer = frebytearray.getBytes();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.e("[GVExtension]", "Encoding failed!");
            return null;
        }
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/").append(s1).toString());
        try
        {
            file.createNewFile();
            FileChannel filechannel = (new FileOutputStream(file)).getChannel();
            bytebuffer.order(ByteOrder.LITTLE_ENDIAN);
            filechannel.write(bytebuffer);
            filechannel.close();
        }
        catch (Exception exception)
        {
            Log.d("[GVExtension]", "File caching failed");
            exception.printStackTrace();
            exception = null;
        }
        try
        {
            frebytearray.release();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            Log.d("[GVExtension]", "Failed closing stream.");
            return null;
        }
        if (file == null)
        {
            Log.d("[GVExtension]", "no out file.");
            return null;
        } else
        {
            return Uri.fromFile(new File(Environment.getExternalStorageDirectory(), s1));
        }
    }

    protected static Bundle a(FREArray frearray, FREArray frearray1)
    {
        Bundle bundle;
        int i1;
        bundle = new Bundle();
        i1 = 0;
_L2:
        long l1 = i1;
        if (l1 >= frearray.getLength())
        {
            break; /* Loop/switch isn't completed */
        }
        bundle.putString(frearray.getObjectAt(i1).getAsString(), frearray1.getObjectAt(i1).getAsString());
        i1++;
        if (true) goto _L2; else goto _L1
        frearray;
        Log.e("[GVExtension]", frearray.getMessage());
_L1:
        return bundle;
    }

    static String a(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.m;
    }

    static String a(List list)
    {
        StringBuilder stringbuilder = new StringBuilder();
        boolean flag = true;
        list = list.iterator();
        while (list.hasNext()) 
        {
            String s1 = (String)list.next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(s1);
        }
        return stringbuilder.toString();
    }

    private List a(Intent intent)
    {
        ArrayList arraylist = new ArrayList();
        Object obj = b.getPackageManager();
        List list = ((PackageManager) (obj)).queryIntentActivities(intent, 0x10000);
        Intent intent1 = new Intent("android.intent.action.SEND");
        intent1.setType("message/rfc822");
        for (obj = ((PackageManager) (obj)).queryIntentActivities(intent1, 0x10000).iterator(); ((Iterator) (obj)).hasNext();)
        {
            String s1 = ((ResolveInfo)((Iterator) (obj)).next()).activityInfo.packageName;
            if (s1 != null)
            {
                Iterator iterator = list.iterator();
                while (iterator.hasNext()) 
                {
                    Object obj1 = ((ResolveInfo)iterator.next()).activityInfo.packageName;
                    if (((String) (obj1)).equals(s1))
                    {
                        Intent intent2 = (Intent)intent.clone();
                        intent2.setPackage(((String) (obj1)));
                        obj1 = arraylist.iterator();
                        boolean flag = false;
                        do
                        {
                            if (!((Iterator) (obj1)).hasNext())
                            {
                                break;
                            }
                            if (((Intent)((Iterator) (obj1)).next()).getPackage().equalsIgnoreCase(intent2.getPackage()))
                            {
                                flag = true;
                            }
                        } while (true);
                        if (!flag)
                        {
                            arraylist.add(intent2);
                        }
                    }
                }
            }
        }

        return arraylist;
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, Bundle bundle, String s1)
    {
        com.facebook.widget.FacebookDialog.ShareDialogBuilder sharedialogbuilder = new com.facebook.widget.FacebookDialog.ShareDialogBuilder(b1.b);
        if (bundle.containsKey("name"))
        {
            sharedialogbuilder.setName(bundle.getString("name"));
        }
        if (bundle.containsKey("caption"))
        {
            sharedialogbuilder.setCaption(bundle.getString("caption"));
        }
        if (bundle.containsKey("message"))
        {
            sharedialogbuilder.setDescription(bundle.getString("message"));
        }
        if (bundle.containsKey("description"))
        {
            sharedialogbuilder.setDescription(bundle.getString("description"));
        }
        if (bundle.containsKey("picture"))
        {
            sharedialogbuilder.setPicture(bundle.getString("picture"));
        }
        if (bundle.containsKey("link"))
        {
            sharedialogbuilder.setLink(bundle.getString("link"));
        }
        if (bundle.containsKey("applicationName"))
        {
            sharedialogbuilder.setApplicationName(bundle.getString("applicationName"));
        }
        if (bundle.containsKey("place"))
        {
            sharedialogbuilder.setPlace(bundle.getString("place"));
        }
        if (bundle.containsKey("ref"))
        {
            sharedialogbuilder.setRef(bundle.getString("ref"));
        }
        if (bundle.containsKey("friends"))
        {
            String s2 = bundle.getString("friends");
            bundle = new ArrayList();
            String as[] = s2.split(",");
            for (int i1 = 0; i1 < as.length; i1++)
            {
                bundle.add(as[i1]);
            }

            sharedialogbuilder.setFriends(bundle);
        }
        sharedialogbuilder.setRequestCode(0x2f6bd);
        b1.u = new com.milkmangames.extensions.android.goviral.r(b1, s1);
        b1.t = sharedialogbuilder.build().present();
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, FREBitmapData frebitmapdata, String s1)
    {
        Session session = Session.getActiveSession();
        if (session == null)
        {
            Log.d("[GVExtension]", "Can't stage image with no active session.");
            b1.a(404, "Not authenticated with facebook.", "me/staging_resources", s1, false, 2, "", "");
            return;
        } else
        {
            Log.d("[GVExtension]", "Parsing image..");
            frebitmapdata = a(frebitmapdata);
            Log.d("[GVExtension]", "Staging...");
            Request.newUploadStagingResourceWithImageRequest(session, frebitmapdata, new com.milkmangames.extensions.android.goviral.c(b1, s1)).executeAsync();
            return;
        }
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, double d1, Bundle bundle)
    {
        b1 = b1.l();
        if (bundle != null)
        {
            b1.logEvent(s1, d1, bundle);
            return;
        } else
        {
            b1.logEvent(s1, d1);
            return;
        }
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, int i1)
    {
        Object obj;
        Object obj1;
        Log.d("[GVExtension]", "request auth-read session..");
        obj = Session.getActiveSession();
        if (obj != null && ((Session) (obj)).isOpened())
        {
            Log.d("[GVExtension]", "auth called with open session; exit");
            return;
        }
        String as[] = s1.split(",");
        s1 = new ArrayList();
        int k1 = as.length;
        for (int j1 = 0; j1 < k1; j1++)
        {
            s1.add(as[j1]);
        }

        Log.d("[GVExtension]", (new StringBuilder("Set array list ")).append(s1.size()).append(" is ").append(s1).toString());
        as = b1.o();
        Log.d("[GVExtension]", "Building a new session-:");
        obj1 = (new com.facebook.Session.Builder(b1.getActivity())).setApplicationId(b1.h);
        ((com.facebook.Session.Builder) (obj1)).setTokenCachingStrategy(new SharedPreferencesTokenCachingStrategy(b1.b));
        obj1 = ((com.facebook.Session.Builder) (obj1)).build();
        Session.setActiveSession(((Session) (obj1)));
        Log.d("[GVExtension]", (new StringBuilder("have session.  Open?")).append(((Session) (obj1)).isOpened()).append(",closed?").append(((Session) (obj1)).isClosed()).append(",state?").append(((Session) (obj1)).getState()).toString());
        b1 = new com.facebook.Session.OpenRequest(b1.getActivity());
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        b1.setLoginBehavior(SessionLoginBehavior.SSO_WITH_FALLBACK);
_L4:
        b1.setDefaultAudience(SessionDefaultAudience.FRIENDS);
        b1.setPermissions(s1);
        b1.setCallback(as);
        b1.setRequestCode(0x23c912);
        Log.d("[GVExtension]", "Open auth session request");
        ((Session) (obj1)).openForRead(b1);
        return;
_L2:
        if (i1 == 1)
        {
            b1.setLoginBehavior(SessionLoginBehavior.SSO_ONLY);
        } else
        if (i1 == 2)
        {
            b1.setLoginBehavior(SessionLoginBehavior.SUPPRESS_SSO);
        } else
        if (i1 == 3)
        {
            b1.setLoginBehavior(SessionLoginBehavior.SSO_WITH_FALLBACK);
        } else
        if (i1 == 4)
        {
            b1.setLoginBehavior(SessionLoginBehavior.SSO_WITH_FALLBACK);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, Bundle bundle)
    {
        b1 = b1.l();
        if (bundle != null)
        {
            b1.logEvent(s1, bundle);
            return;
        } else
        {
            b1.logEvent(s1);
            return;
        }
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, FREBitmapData frebitmapdata, String s2)
    {
        b1.a(s1, frebitmapdata, s2, false);
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, FREBitmapData frebitmapdata, String s2, String s3, boolean flag)
    {
        Bundle bundle = new Bundle();
        bundle.putByteArray("picture", b(frebitmapdata));
        bundle.putString("message", s1);
        b1.a(s2, "POST", bundle, "publish_actions", s3, flag);
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2)
    {
        b1.a(s1, s2, false);
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, Bundle bundle, FREBitmapData frebitmapdata, String s3)
    {
        String s4;
        if (s2.contains(":"))
        {
            s4 = s2.split(":")[1];
        } else
        {
            s4 = s2;
        }
        if (frebitmapdata != null)
        {
            frebitmapdata = a(frebitmapdata);
        } else
        {
            frebitmapdata = null;
        }
        s1 = com.facebook.model.OpenGraphAction.Factory.createForPost(s1);
        s2 = com.facebook.model.OpenGraphObject.Factory.createForPost(s2);
        if (bundle.containsKey("title"))
        {
            s2.setTitle(bundle.getString("title"));
            bundle.remove("title");
        }
        if (bundle.containsKey("url"))
        {
            s2.setUrl(bundle.getString("url"));
            bundle.remove("url");
        }
        if (bundle.containsKey("description"))
        {
            s2.setDescription(bundle.getString("description"));
            bundle.remove("description");
        }
        String s5;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); s2.setProperty(s5, bundle.get(s5)))
        {
            s5 = (String)iterator.next();
        }

        s1.setProperty(s4, s2);
        s1 = new com.facebook.widget.FacebookDialog.OpenGraphActionDialogBuilder(b1.b, s1, s4);
        if (frebitmapdata != null)
        {
            s1.setImageAttachmentsForAction(Arrays.asList(new Bitmap[] {
                frebitmapdata
            }), true);
        }
        if (bundle.containsKey("applicationName"))
        {
            s1.setApplicationName(bundle.getString("applicationName"));
            bundle.remove("applicationName");
        }
        s1.setRequestCode(0x2f6be);
        b1.u = new com.milkmangames.extensions.android.goviral.n(b1, s3);
        b1.t = s1.build().present();
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, Bundle bundle, String s3, String s4, boolean flag)
    {
        b1.a(s1, s2, bundle, s3, s4, flag);
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, String s3, boolean flag, String s4, String s5, FREBitmapData frebitmapdata, 
            String s6, String s7)
    {
        String as[] = s2.split(",");
        s4 = s4.split(",");
        s5 = s5.split(",");
        s2 = new Intent("android.intent.action.SEND");
        if (as.length > 0)
        {
            s2.putExtra("android.intent.extra.EMAIL", as);
        }
        s2.putExtra("android.intent.extra.SUBJECT", s1);
        if (s4.length > 0)
        {
            s2.putExtra("android.intent.extra.CC", s4);
        }
        if (s5.length > 0)
        {
            s2.putExtra("android.intent.extra.BCC", s5);
        }
        if (flag)
        {
            s1 = "text/html";
            s2.putExtra("android.intent.extra.TEXT", Html.fromHtml(s3));
        } else
        {
            s1 = "text/plain";
            s2.putExtra("android.intent.extra.TEXT", s3);
        }
        s3 = a(s6, frebitmapdata);
        if (s3 != null)
        {
            s2.putExtra("android.intent.extra.STREAM", s3);
            s1 = "image/jpeg";
        }
        s2.setType(s1);
        b1.q = s7;
        s1 = b1.a(((Intent) (s2)));
        if (s1.size() > 0)
        {
            s2 = Intent.createChooser((Intent)s1.remove(0), "Send with:");
            s2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])s1.toArray(new Parcelable[0]));
            b1.b.startActivityForResult(s2, 0x2f6bb);
            return;
        } else
        {
            b1.b.startActivityForResult(s2, 0x2f6bb);
            return;
        }
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, String s3, boolean flag, String s4, String s5, FREByteArray frebytearray, 
            String s6, String s7, String s8)
    {
        s2 = s2.split(",");
        String as[] = s4.split(",");
        s5 = s5.split(",");
        s4 = new Intent("android.intent.action.SEND");
        if (s2.length > 0)
        {
            s4.putExtra("android.intent.extra.EMAIL", s2);
        }
        s4.putExtra("android.intent.extra.SUBJECT", s1);
        if (as.length > 0)
        {
            s4.putExtra("android.intent.extra.CC", as);
        }
        if (s5.length > 0)
        {
            s4.putExtra("android.intent.extra.BCC", s5);
        }
        if (flag)
        {
            s4.putExtra("android.intent.extra.TEXT", Html.fromHtml(s3));
        } else
        {
            s4.putExtra("android.intent.extra.TEXT", s3);
        }
        s1 = a(s7, frebytearray);
        if (s1 != null)
        {
            s4.setType(s6);
            s4.putExtra("android.intent.extra.STREAM", s1);
        }
        b1.q = s8;
        s1 = b1.a(((Intent) (s4)));
        if (s1.size() > 0)
        {
            s2 = Intent.createChooser((Intent)s1.remove(0), "Send with:");
            s2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])s1.toArray(new Parcelable[0]));
            b1.b.startActivityForResult(s2, 0x2f6bb);
            return;
        } else
        {
            b1.b.startActivityForResult(s4, 0x2f6bb);
            return;
        }
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, String s3, boolean flag, String s4, String s5, String s6)
    {
        s2 = s2.split(",");
        s4 = s4.split(",");
        String as[] = s5.split(",");
        s5 = new Intent("android.intent.action.SEND");
        if (s2.length > 0)
        {
            s5.putExtra("android.intent.extra.EMAIL", s2);
        }
        s5.putExtra("android.intent.extra.SUBJECT", s1);
        if (s4.length > 0)
        {
            s5.putExtra("android.intent.extra.CC", s4);
        }
        if (as.length > 0)
        {
            s5.putExtra("android.intent.extra.BCC", as);
        }
        if (flag)
        {
            s5.setType("text/html");
            s5.putExtra("android.intent.extra.TEXT", Html.fromHtml(s3));
        } else
        {
            s5.setType("text/plain");
            s5.putExtra("android.intent.extra.TEXT", s3);
        }
        b1.q = s6;
        s1 = b1.a(((Intent) (s5)));
        Log.d("[GVExtension]", (new StringBuilder("Client intents length:")).append(s1.size()).toString());
        if (s1.size() > 0)
        {
            s2 = Intent.createChooser((Intent)s1.remove(0), "Send with:");
            s2.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])s1.toArray(new Parcelable[0]));
            b1.b.startActivityForResult(s2, 0x2f6bb);
            return;
        } else
        {
            b1.b.startActivityForResult(s5, 0x2f6bb);
            return;
        }
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, boolean flag, FREBitmapData frebitmapdata, String s3)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        if (flag)
        {
            intent.setType("text/html");
            intent.putExtra("android.intent.extra.TEXT", Html.fromHtml(s2));
        } else
        {
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", s2);
        }
        s1 = a("image_1", frebitmapdata);
        if (s1 != null)
        {
            intent.putExtra("android.intent.extra.STREAM", s1);
            s1 = "image/jpeg";
        } else
        {
            s1 = "text/html";
        }
        intent.setType(s1);
        b1.o = s3;
        b1.b.startActivityForResult(intent, 0x2f6ba);
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, boolean flag, String s3)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        if (flag)
        {
            intent.setType("text/html");
            intent.putExtra("android.intent.extra.TEXT", Html.fromHtml(s2));
        } else
        {
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", s2);
        }
        b1.o = s3;
        b1.b.startActivityForResult(intent, 0x2f6b9);
    }

    static void a(com.milkmangames.extensions.android.goviral.b b1, String s1, boolean flag)
    {
        Log.d("[GVExtension]", (new StringBuilder("BEFORE:0 ")).append(com.facebook.android.R.id.com_facebook_login_activity_progress_bar).toString());
        b1.h = s1;
        b1.t = null;
        b1.m = null;
        if (e)
        {
            b1.n();
        }
        if (flag)
        {
            Settings.setPlatformCompatibilityEnabled(true);
        }
        Log.d("[GVExtension]", "Get active session..");
        Object obj1 = Session.getActiveSession();
        com.facebook.Session.StatusCallback statuscallback = b1.o();
        b1.g = b1.b.getPreferences(0);
        Object obj = b1.g.getString("access_token", null);
        d = new com.milkmangames.extensions.android.goviral.a(s1, statuscallback, ((String) (obj)));
        Settings.setApplicationId(s1);
        if (obj1 == null)
        {
            if (obj != null)
            {
                Log.d("[GVExtension]", "with old token!");
                obj1 = b1.g.edit();
                ((android.content.SharedPreferences.Editor) (obj1)).putString("access_token", null);
                ((android.content.SharedPreferences.Editor) (obj1)).commit();
            }
            Log.d("[GVExtension]", "Null session at start.");
            s1 = (new com.facebook.Session.Builder(b1.b)).setApplicationId(s1);
            s1.setTokenCachingStrategy(new SharedPreferencesTokenCachingStrategy(b1.b));
            s1 = s1.build();
            if (obj != null)
            {
                obj = AccessToken.createFromExistingAccessToken(((String) (obj)), null, null, null, null);
                Log.d("[GVExtension]", "Open new session from legacy storage");
                s1.open(((AccessToken) (obj)), statuscallback);
                Session.setActiveSession(s1);
                AppEventsLogger.activateApp(b1.getActivity(), b1.h);
                return;
            }
            Log.d("[GVExtension]", "Auto restart session");
            Log.d("[GVExtension]", (new StringBuilder("STATE: ")).append(s1.getState()).toString());
            obj = new StringBuilder("->--With token?");
            if (s1.getState() == SessionState.CREATED_TOKEN_LOADED)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Log.d("[GVExtension]", ((StringBuilder) (obj)).append(flag).toString());
            if (SessionState.CREATED_TOKEN_LOADED.equals(s1.getState()))
            {
                Session.setActiveSession(s1);
                s1.openForRead((new com.facebook.Session.OpenRequest(b1.b)).setCallback(statuscallback));
            }
            AppEventsLogger.activateApp(b1.getActivity(), b1.h);
            return;
        }
        Log.d("[GVExtension]", "Open stored session, no ui.");
        if (SessionState.CREATED_TOKEN_LOADED.equals(((Session) (obj1)).getState()))
        {
            Session.setActiveSession(((Session) (obj1)));
            ((Session) (obj1)).openForRead((new com.facebook.Session.OpenRequest(b1.b)).setCallback(statuscallback));
        }
        AppEventsLogger.activateApp(b1.getActivity(), b1.h);
    }

    private void a(String s1, FREBitmapData frebitmapdata, String s2, boolean flag)
    {
        Intent intent = c("text/plain");
        if (intent == null)
        {
            return;
        }
        intent.putExtra("android.intent.extra.TEXT", s1);
        s1 = a("twattachment", frebitmapdata);
        int i1;
        if (s1 != null)
        {
            intent.putExtra("android.intent.extra.STREAM", s1);
            intent.setType("image/jpeg");
        } else
        {
            Log.d("[GVExtension]", "Twitter intent did not allow image attachment.");
            intent.setType("text/plain");
        }
        r = s2;
        s1 = b;
        if (flag)
        {
            i1 = 0x23c913;
        } else
        {
            i1 = 0x2f6bc;
        }
        s1.startActivityForResult(intent, i1);
    }

    private void a(String s1, String s2, Bundle bundle, String s3, String s4, boolean flag)
    {
label0:
        {
            if (!j())
            {
                return;
            }
            Log.d("[GVExtension]", "Graph->GetSession");
            Session session = Session.getActiveSession();
            ArrayList arraylist = new ArrayList();
            boolean flag1;
            if (s3 != null && !s3.equals(""))
            {
                String as[] = s3.split(",");
                flag1 = false;
                for (int i1 = 0; i1 < as.length; i1++)
                {
                    if (!Session.getActiveSession().getPermissions().contains(as[i1]))
                    {
                        Log.d("[GVExtension]", (new StringBuilder("No current write permission for '")).append(as[i1]).append("'").toString());
                        flag1 = true;
                    }
                }

                int k1 = as.length;
                for (int j1 = 0; j1 < k1; j1++)
                {
                    arraylist.add(as[j1]);
                }

            } else
            {
                flag1 = false;
            }
            l = s1;
            s3 = new com.milkmangames.extensions.android.goviral.v(this, s1, s3, s4);
            Log.d("[GVExtension]", "Graph->Task");
            if (s2.equals("GET"))
            {
                break label0;
            }
            if (s2.equals("POST"))
            {
                s2 = HttpMethod.POST;
            } else
            {
                if (!s2.equals("DELETE"))
                {
                    break label0;
                }
                s2 = HttpMethod.DELETE;
            }
        }
        s1 = new Request(session, s1, bundle, s2, s3);
        if (flag)
        {
            s1.setVersion("v1.0");
        }
        s1 = new RequestAsyncTask(new Request[] {
            s1
        });
        if (flag1)
        {
            i = s1;
            n = s4;
            Log.d("[GVExtension]", "Reauthorizing for graph publish permissions.");
            s1 = new com.facebook.Session.NewPermissionsRequest(getActivity(), arraylist);
            s1.setRequestCode(0x23c912);
            Session.getActiveSession().requestNewPublishPermissions(s1);
            return;
        } else
        {
            Log.d("[GVExtension]", "Graph execute");
            s1.execute(new Void[0]);
            return;
        }
        s2 = HttpMethod.GET;
        break MISSING_BLOCK_LABEL_221;
    }

    private void a(String s1, String s2, boolean flag)
    {
        Intent intent = c("text/plain");
        if (intent == null)
        {
            return;
        }
        intent.putExtra("android.intent.extra.TEXT", s1);
        r = s2;
        s1 = b;
        int i1;
        if (flag)
        {
            i1 = 0x23c913;
        } else
        {
            i1 = 0x2f6bc;
        }
        s1.startActivityForResult(intent, i1);
    }

    static boolean a(com.milkmangames.extensions.android.goviral.b b1, String s1)
    {
        if (!j())
        {
            return false;
        } else
        {
            b1.m = (new StringBuilder()).append(s1).toString();
            Session.getActiveSession().refreshPermissions();
            return true;
        }
    }

    static boolean a(com.milkmangames.extensions.android.goviral.b b1, String s1, String s2, boolean flag, FREBitmapData frebitmapdata, String s3, String s4)
    {
        b1.p = s4;
        if (s1.equals("SINAWEIBO"))
        {
            return false;
        }
        if (s1.equals("TWITTER"))
        {
            if (flag)
            {
                b1.a(s2, frebitmapdata, s4, true);
                return true;
            } else
            {
                b1.a(s2, s4, true);
                return true;
            }
        }
        if (flag && frebitmapdata != null && !s1.equals("SMS"))
        {
            frebitmapdata = a("image_1", frebitmapdata);
        } else
        {
            frebitmapdata = null;
        }
        if (s1.equals("FACEBOOK"))
        {
            s4 = b1.m();
            if (s4 == null)
            {
                return false;
            }
            if (s3 != null)
            {
                s2 = (new StringBuilder()).append(s2).append(" ").append(s3).toString();
            }
            s4.putExtra("android.intent.extra.TEXT", s2);
            s3 = s2;
            s2 = s4;
        } else
        {
            s4 = null;
            s3 = s2;
            s2 = s4;
        }
        if (s1.equals("SMS"))
        {
            s1 = b1.b(s3);
            s2 = s1;
            if (s1 == null)
            {
                return false;
            }
        }
        if (s2 == null)
        {
            return false;
        }
        if (frebitmapdata != null)
        {
            s2.putExtra("android.intent.extra.STREAM", frebitmapdata);
            s2.setType("image/jpeg");
        }
        b1.b.startActivityForResult(s2, 0x23c913);
        return true;
    }

    static boolean a(com.milkmangames.extensions.android.goviral.b b1, boolean flag)
    {
        Activity activity = b1.b;
        if (flag)
        {
            b1 = com.facebook.widget.FacebookDialog.ShareDialogFeature.PHOTOS;
        } else
        {
            b1 = com.facebook.widget.FacebookDialog.ShareDialogFeature.SHARE_DIALOG;
        }
        return FacebookDialog.canPresentShareDialog(activity, new com.facebook.widget.FacebookDialog.ShareDialogFeature[] {
            b1
        });
    }

    static boolean a(String s1)
    {
        Log.d("[GVExtension]", "in is");
        Session session = Session.getActiveSession();
        if (session == null)
        {
            Log.d("[GVExtension]", (new StringBuilder("No active session to check permission ")).append(s1).toString());
            return false;
        } else
        {
            boolean flag = session.isPermissionGranted(s1);
            Log.d("[GVExtension]", (new StringBuilder("Granted ")).append(s1).append(" is ").append(s1).toString());
            return flag;
        }
    }

    private Intent b(String s1)
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            String s2 = android.provider.Telephony.Sms.getDefaultSmsPackage(getActivity());
            if (s2 == null)
            {
                return null;
            } else
            {
                intent.putExtra("android.intent.extra.TEXT", s1);
                intent.setPackage(s2);
                return intent;
            }
        } else
        {
            Intent intent1 = new Intent("android.intent.action.VIEW");
            intent1.setData(Uri.parse("sms:"));
            intent1.putExtra("sms_body", s1);
            return intent1;
        }
    }

    static String b(com.milkmangames.extensions.android.goviral.b b1)
    {
        b1.m = null;
        return null;
    }

    static void b(com.milkmangames.extensions.android.goviral.b b1, Bundle bundle, String s1)
    {
        com.facebook.widget.FacebookDialog.MessageDialogBuilder messagedialogbuilder = new com.facebook.widget.FacebookDialog.MessageDialogBuilder(b1.b);
        if (bundle.containsKey("name"))
        {
            messagedialogbuilder.setName(bundle.getString("name"));
        }
        if (bundle.containsKey("caption"))
        {
            messagedialogbuilder.setCaption(bundle.getString("caption"));
        }
        if (bundle.containsKey("message"))
        {
            messagedialogbuilder.setDescription(bundle.getString("message"));
        }
        if (bundle.containsKey("description"))
        {
            messagedialogbuilder.setDescription(bundle.getString("description"));
        }
        if (bundle.containsKey("picture"))
        {
            messagedialogbuilder.setPicture(bundle.getString("picture"));
        }
        if (bundle.containsKey("link"))
        {
            messagedialogbuilder.setLink(bundle.getString("link"));
        }
        if (bundle.containsKey("applicationName"))
        {
            messagedialogbuilder.setApplicationName(bundle.getString("applicationName"));
        }
        if (bundle.containsKey("ref"))
        {
            messagedialogbuilder.setRef(bundle.getString("ref"));
        }
        messagedialogbuilder.setRequestCode(0x2f6bf);
        b1.u = new com.milkmangames.extensions.android.goviral.q(b1, s1);
        b1.t = messagedialogbuilder.build().present();
    }

    static boolean b(com.milkmangames.extensions.android.goviral.b b1, String s1)
    {
        Log.d("[GVExtension]", (new StringBuilder("Service check:")).append(s1).toString());
        if (!s1.equals("SINAWEIBO"))
        {
            if (s1.equals("FACEBOOK"))
            {
                return b1.m() != null;
            }
            if (s1.equals("TWITTER"))
            {
                return b1.k();
            }
            if (s1.equals("SMS"))
            {
                return b1.b("test") != null;
            }
        }
        return false;
    }

    static boolean b(com.milkmangames.extensions.android.goviral.b b1, boolean flag)
    {
        Activity activity = b1.b;
        if (flag)
        {
            b1 = com.facebook.widget.FacebookDialog.MessageDialogFeature.PHOTOS;
        } else
        {
            b1 = com.facebook.widget.FacebookDialog.MessageDialogFeature.MESSAGE_DIALOG;
        }
        return FacebookDialog.canPresentMessageDialog(activity, new com.facebook.widget.FacebookDialog.MessageDialogFeature[] {
            b1
        });
    }

    private static byte[] b(FREBitmapData frebitmapdata)
    {
        int i1;
        frebitmapdata.acquire();
        i1 = frebitmapdata.getWidth();
        Object obj;
        int j1;
        try
        {
            j1 = frebitmapdata.getHeight();
        }
        catch (Exception exception)
        {
            j1 = i1;
            i1 = 0;
            continue; /* Loop/switch isn't completed */
        }
        obj = frebitmapdata.getBits();
        Log.d("[GVExtension]", (new StringBuilder("Image size:")).append(i1).append(",").append(j1).toString());
        int k1 = j1;
        j1 = i1;
        i1 = k1;
        break MISSING_BLOCK_LABEL_66;
        obj;
        i1 = 0;
        j1 = 0;
_L2:
        Log.d("[GVExtension]", "Encoding failed!");
        obj = null;
        continue; /* Loop/switch isn't completed */
_L4:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_350;
        }
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        Bitmap bitmap = Bitmap.createBitmap(j1, i1, android.graphics.Bitmap.Config.ARGB_8888);
        bitmap.copyPixelsFromBuffer(((java.nio.Buffer) (obj)));
        obj = Bitmap.createBitmap(j1, i1, android.graphics.Bitmap.Config.ARGB_8888);
        for (int l1 = 0; l1 < i1; l1++)
        {
            for (int j2 = 0; j2 < j1; j2++)
            {
                int k2 = bitmap.getPixel(j2, l1);
                ((Bitmap) (obj)).setPixel(j2, l1, (k2 & 0xff) << 16 | (k2 >> 24 & 0xff) << 24 | (k2 >> 8 & 0xff) << 8 | k2 >> 16 & 0xff);
            }

        }

        Log.d("[GVExtension]", (new StringBuilder("wrote bitmap height-")).append(((Bitmap) (obj)).getHeight()).toString());
        ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, bytearrayoutputstream);
        Log.d("[GVExtension]", (new StringBuilder("results in px39:")).append(((Bitmap) (obj)).getPixel(39, 39)).toString());
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        try
        {
            bytearrayoutputstream.flush();
            bytearrayoutputstream.close();
            frebitmapdata.release();
        }
        // Misplaced declaration of an exception variable
        catch (FREBitmapData frebitmapdata)
        {
            Log.d("[GVExtension]", "Failed releasing image");
            return abyte0;
        }
        return abyte0;
        Exception exception1;
        exception1;
        int i2 = i1;
        i1 = j1;
        j1 = i2;
        if (true) goto _L2; else goto _L1
_L1:
        return null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private Intent c(String s1)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(s1);
        s1 = b.getPackageManager().queryIntentActivities(intent, 0x10000);
        int i1 = 0;
        do
        {
            if (i1 >= a.length)
            {
                break;
            }
            for (Iterator iterator = s1.iterator(); iterator.hasNext();)
            {
                String s2 = ((ResolveInfo)iterator.next()).activityInfo.packageName;
                if (s2 != null && s2.startsWith(a[i1]))
                {
                    intent.setPackage(s2);
                    return intent;
                }
            }

            i1++;
        } while (true);
        return null;
    }

    static RequestAsyncTask c(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.i;
    }

    static String c()
    {
        Object obj = Session.getActiveSession();
        if (obj == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        obj = ((Session) (obj)).getDeclinedPermissions();
        boolean flag = true;
        obj = ((List) (obj)).iterator();
        while (((Iterator) (obj)).hasNext()) 
        {
            String s1 = (String)((Iterator) (obj)).next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(s1);
        }
        return stringbuilder.toString();
    }

    static void c(com.milkmangames.extensions.android.goviral.b b1, Bundle bundle, String s1)
    {
        if (j())
        {
            ((com.facebook.widget.WebDialog.FeedDialogBuilder)(new com.facebook.widget.WebDialog.FeedDialogBuilder(b1.b, Session.getActiveSession(), bundle)).setOnCompleteListener(new com.milkmangames.extensions.android.goviral.s(b1, s1))).build().show();
        }
    }

    static boolean c(com.milkmangames.extensions.android.goviral.b b1, String s1)
    {
        if (j())
        {
            ArrayList arraylist = new ArrayList();
            Log.d("[GVExtension]", (new StringBuilder("in new publish is ")).append(s1).toString());
            boolean flag;
            if (s1 != null && !s1.equals(""))
            {
                String as[] = s1.split(",");
                int i1 = 0;
                flag = false;
                for (; i1 < as.length; i1++)
                {
                    if (!Session.getActiveSession().getPermissions().contains(as[i1]))
                    {
                        Log.d("[GVExtension]", (new StringBuilder("No current write permission for '")).append(as[i1]).append("'").toString());
                        flag = true;
                    }
                }

                int k1 = as.length;
                for (int j1 = 0; j1 < k1; j1++)
                {
                    arraylist.add(as[j1]);
                }

            } else
            {
                flag = false;
            }
            if (flag)
            {
                Log.d("[GVExtension]", "requesting new publish permissions.");
                Log.d("[GVExtension]", "FBWrap request new publish start.");
                b1.k = s1;
                b1 = new com.facebook.Session.NewPermissionsRequest(b1.getActivity(), arraylist);
                b1.setRequestCode(0x23c912);
                Session.getActiveSession().requestNewPublishPermissions(b1);
                return true;
            }
        }
        return false;
    }

    static String d(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.l;
    }

    static void d(com.milkmangames.extensions.android.goviral.b b1, Bundle bundle, String s1)
    {
        if (j())
        {
            b1 = (com.facebook.widget.WebDialog.RequestsDialogBuilder)(new com.facebook.widget.WebDialog.RequestsDialogBuilder(b1.b, Session.getActiveSession(), bundle)).setOnCompleteListener(new com.milkmangames.extensions.android.goviral.t(b1, s1));
            if (bundle.containsKey("message"))
            {
                b1.setMessage(bundle.getString("message"));
            }
            if (bundle.containsKey("title"))
            {
                b1.setTitle(bundle.getString("title"));
            }
            if (bundle.containsKey("to"))
            {
                b1.setTo(bundle.getString("to"));
            }
            if (bundle.containsKey("data"))
            {
                b1.setData(bundle.getString("data"));
            }
            b1.build().show();
        }
    }

    static boolean d()
    {
        return true;
    }

    static boolean d(com.milkmangames.extensions.android.goviral.b b1, String s1)
    {
        if (j())
        {
            ArrayList arraylist = new ArrayList();
            boolean flag;
            if (s1 != null && !s1.equals(""))
            {
                String as[] = s1.split(",");
                int i1 = 0;
                flag = false;
                for (; i1 < as.length; i1++)
                {
                    if (!Session.getActiveSession().getPermissions().contains(as[i1]))
                    {
                        Log.d("[GVExtension]", (new StringBuilder("No current read permission for '")).append(as[i1]).append("'").toString());
                        flag = true;
                    }
                }

                int k1 = as.length;
                for (int j1 = 0; j1 < k1; j1++)
                {
                    arraylist.add(as[j1]);
                }

            } else
            {
                flag = false;
            }
            if (flag)
            {
                Log.d("[GVExtension]", "requesting new read permissions.");
                b1.j = s1;
                b1 = new com.facebook.Session.NewPermissionsRequest(b1.getActivity(), arraylist);
                b1.setRequestCode(0x23c912);
                Session.getActiveSession().requestNewReadPermissions(b1);
                return true;
            }
        }
        return false;
    }

    static String e(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.n;
    }

    static void e(com.milkmangames.extensions.android.goviral.b b1, String s1)
    {
        (new RequestAsyncTask(new Request[] {
            Request.newCustomAudienceThirdPartyIdRequest(null, b1.getActivity(), new com.milkmangames.extensions.android.goviral.u(b1, s1))
        })).execute(new Void[0]);
    }

    static boolean e()
    {
        return true;
    }

    static String f(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.k;
    }

    static void f(com.milkmangames.extensions.android.goviral.b b1, String s1)
    {
        if (b1.getActivity().getPackageManager().getPackageInfo("com.facebook.katana", 0).versionCode < 0x2dd1e2) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = (new StringBuilder("https://www.facebook.com/profile.php?id=")).append(s1).toString();
        obj = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder("fb://facewebmodal/f?href=")).append(((String) (obj))).toString()));
        s1 = ((String) (obj));
_L4:
        b1.getActivity().startActivity(s1);
        return;
_L2:
        obj = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder("fb://profile/")).append(s1).toString()));
        s1 = ((String) (obj));
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        s1 = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder("https://m.facebook.com/profile.php?id=")).append(s1).toString()));
        if (true) goto _L4; else goto _L3
_L3:
    }

    static boolean f()
    {
        return j();
    }

    static RequestAsyncTask g(com.milkmangames.extensions.android.goviral.b b1)
    {
        b1.i = null;
        return null;
    }

    static void g()
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            session.closeAndClearTokenInformation();
        }
    }

    static String h()
    {
        Session session = Session.getActiveSession();
        if (session != null && session.isOpened())
        {
            return session.getAccessToken();
        } else
        {
            return "";
        }
    }

    static String h(com.milkmangames.extensions.android.goviral.b b1)
    {
        b1.k = null;
        return null;
    }

    static double i()
    {
        Session session = Session.getActiveSession();
        if (session != null && session.isOpened())
        {
            return (double)(session.getExpirationDate().getTime() / 1000L);
        } else
        {
            return 0.0D;
        }
    }

    static String i(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.j;
    }

    static String j(com.milkmangames.extensions.android.goviral.b b1)
    {
        b1.j = null;
        return null;
    }

    private static boolean j()
    {
        Session session = Session.getActiveSession();
        if (session == null)
        {
            return false;
        }
        if (session.isClosed())
        {
            return false;
        }
        return session.isOpened();
    }

    private boolean k()
    {
        return c("text/plain") != null;
    }

    static boolean k(com.milkmangames.extensions.android.goviral.b b1)
    {
        return FacebookDialog.canPresentOpenGraphActionDialog(b1.b, new com.facebook.widget.FacebookDialog.OpenGraphActionDialogFeature[] {
            com.facebook.widget.FacebookDialog.OpenGraphActionDialogFeature.OG_ACTION_DIALOG
        });
    }

    private AppEventsLogger l()
    {
        if (s == null)
        {
            s = AppEventsLogger.newLogger(getActivity());
        }
        return s;
    }

    static void l(com.milkmangames.extensions.android.goviral.b b1)
    {
        Log.d("[GVExtension]", "GoViral initializer-.");
        b1.b = b1.getActivity();
        b1.f = new aq(b1);
        b1.f.a(b1);
        c = b1;
    }

    private Intent m()
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        for (Iterator iterator = b.getPackageManager().queryIntentActivities(intent, 0x10000).iterator(); iterator.hasNext();)
        {
            ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
            if (resolveinfo.activityInfo.packageName.contains("com.facebook.katana"))
            {
                ActivityInfo activityinfo = resolveinfo.activityInfo;
                intent.setComponent(new ComponentName(activityinfo.applicationInfo.packageName, activityinfo.name));
                return intent;
            }
        }

        return null;
    }

    static boolean m(com.milkmangames.extensions.android.goviral.b b1)
    {
        AppEventsLogger.activateApp(b1.getActivity(), b1.h);
        return true;
    }

    private void n()
    {
        Log.d("[GVExtension]", "doDebugDisplay");
        Signature asignature[];
        int j1;
        asignature = b.getPackageManager().getPackageInfo(b.getApplicationContext().getPackageName(), 64).signatures;
        j1 = asignature.length;
        String s1;
        int i1;
        s1 = "";
        i1 = 0;
_L2:
        Object obj;
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = asignature[i1];
        MessageDigest messagedigest = MessageDigest.getInstance("SHA");
        messagedigest.update(((Signature) (obj)).toByteArray());
        obj = Base64.encodeToString(messagedigest.digest(), 0);
        s1 = ((String) (obj));
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        s1 = (new StringBuilder()).append(s1).toString();
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(b)).create();
        alertdialog.setTitle("DEBUG");
        alertdialog.setMessage((new StringBuilder("Your fb hashkey is ")).append(s1).toString());
        alertdialog.setButton(-1, "Mail it", new com.milkmangames.extensions.android.goviral.w(this, s1));
        alertdialog.setButton(-2, "Close", new com.milkmangames.extensions.android.goviral.d(this));
        alertdialog.show();
        return;
        Object obj1;
        obj1;
        s1 = "";
_L5:
        Log.e("name not found", ((android.content.pm.PackageManager.NameNotFoundException) (obj1)).toString());
          goto _L1
        obj1;
        s1 = "";
_L4:
        Log.e("no such an algorithm", ((NoSuchAlgorithmException) (obj1)).toString());
          goto _L1
        obj1;
        s1 = "";
_L3:
        Log.e("exception", ((Exception) (obj1)).toString());
          goto _L1
        obj1;
          goto _L3
        obj1;
          goto _L4
        obj1;
          goto _L5
    }

    static boolean n(com.milkmangames.extensions.android.goviral.b b1)
    {
        return b1.k();
    }

    private com.facebook.Session.StatusCallback o()
    {
        return new com.milkmangames.extensions.android.goviral.e(this);
    }

    public final void a()
    {
        Log.d("[GVExtension]", "started fb");
    }

    public final void a(int i1, int j1, Intent intent)
    {
        Log.d("[GVExtension]", (new StringBuilder("r=")).append(i1).toString());
        if (i1 == 0x23c912)
        {
            Session.getActiveSession().onActivityResult(b, i1, j1, intent);
        }
        if (i1 == 0x2f6bc)
        {
            dispatchStatusEventAsync((new StringBuilder()).append(r).append("[[[GVRiD]]]18").toString(), "");
        }
        if (i1 == 0x2f6bb)
        {
            dispatchStatusEventAsync((new StringBuilder()).append(q).append("[[[GVRiD]]]3").toString(), "");
        }
        if (i1 == 0x2f6ba || i1 == 0x2f6b9)
        {
            dispatchStatusEventAsync((new StringBuilder()).append(o).append("[[[GVRiD]]]30").toString(), "");
        }
        if (i1 == 0x23c913)
        {
            dispatchStatusEventAsync((new StringBuilder()).append(p).append("[[[GVRiD]]]51").toString(), "");
        }
        if (i1 != 0x2f6bd && i1 != 0x2f6be && i1 != 0x2f6bf || t == null)
        {
            return;
        } else
        {
            FacebookDialog.handleActivityResult(b, t, i1, intent, u);
            return;
        }
    }

    public final void a(int i1, String s1, String s2, String s3)
    {
        s1 = (new StringBuilder()).append(i1).append("[ERR]").append(s1).append("[URL]").append(s2).toString();
        Log.d("[GVExtension]", (new StringBuilder("FB Dialog failed:")).append(s1).toString());
        dispatchStatusEventAsync((new StringBuilder()).append(s3).append("[[[GVRiD]]]11").toString(), s1);
    }

    public final void a(int i1, String s1, String s2, String s3, boolean flag, int j1, String s4, 
            String s5)
    {
        s1 = (new StringBuilder("{\"permissions\":\"")).append(s5).append("\",\"gvShouldNotify\":").append(flag).append(",\"gvCategory\":").append(j1).append(",\"gvErrCode\":").append(i1).append(",\"gvErr\":\"").append(s1).append("\",\"gvUrl\":\"").append(s2).append("\",\"gvUserMessage\":\"").append(s4).append("\"}").toString();
        dispatchStatusEventAsync((new StringBuilder()).append(s3).append("[[[GVRiD]]]13").toString(), s1);
    }

    public final void a(String s1, Bundle bundle, String s2)
    {
        Object obj;
        JSONStringer jsonstringer;
        Log.d("[GVExtension]", "FBDialogFinished.");
        jsonstringer = new JSONStringer();
        obj = (new StringBuilder("{\"gvDialogType\":\"")).append(s1).append("\"}").toString();
        if (bundle == null) goto _L2; else goto _L1
_L1:
        jsonstringer.object();
        jsonstringer.key("gvDialogType");
        jsonstringer.value(s1);
        String s3;
        for (obj = bundle.keySet().iterator(); ((Iterator) (obj)).hasNext(); jsonstringer.value(bundle.getString(s3)))
        {
            s3 = (String)((Iterator) (obj)).next();
            jsonstringer.key(s3);
        }

          goto _L3
_L2:
        dispatchStatusEventAsync((new StringBuilder()).append(s2).append("[[[GVRiD]]]9").toString(), ((String) (obj)));
        return;
_L3:
        try
        {
            jsonstringer.endObject();
            obj = jsonstringer.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            Log.d("[GVExtension]", "Failed parsing fb dialog return values.");
            obj = (new StringBuilder("{\"gvDialogType\":\"")).append(s1).append("\"}").toString();
        }
        if (true) goto _L2; else goto _L4
_L4:
    }

    public final void a(String s1, String s2)
    {
        String s3 = (new StringBuilder("{\"gvDialogType\":\"")).append(s1).append("\"}").toString();
        Log.d("[GVExtension]", (new StringBuilder("facebook dialog canceled :")).append(s1).toString());
        dispatchStatusEventAsync((new StringBuilder()).append(s2).append("[[[GVRiD]]]10").toString(), s3);
    }

    public final void a(String s1, String s2, String s3)
    {
        s1 = (new StringBuilder()).append(s1).append("[URL]").append(s2).toString();
        Log.d("[GVExtension]", (new StringBuilder("onrawresponse:")).append(s1).toString());
        dispatchStatusEventAsync((new StringBuilder()).append(s3).append("[[[GVRiD]]]12").toString(), s1);
    }

    public final void b()
    {
        Log.d("[GVExtension]", "Resume->activate publish");
        AppEventsLogger.activateApp(getActivity(), h);
    }

    public final void dispose()
    {
        b = null;
    }

    public final Map getFunctions()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("ffiInitGoViral", new n((byte)0));
        hashmap.put("ffiCanSendEmail", new b((byte)0));
        hashmap.put("ffiShowEmailComposer", new x((byte)0));
        hashmap.put("ffiShowEmailComposerWithBitmap", new y((byte)0));
        hashmap.put("ffiShowEmailComposerWithByteArray", new z((byte)0));
        hashmap.put("ffiInitFacebook", new m((byte)0));
        hashmap.put("ffiAuthenticateWithFacebook", new a((byte)0));
        hashmap.put("ffiIsFacebookAuthenticated", new o((byte)0));
        hashmap.put("ffiLogoutFacebook", new s((byte)0));
        hashmap.put("ffiShowFacebookFeedDialog", new aa((byte)0));
        hashmap.put("ffiShowFacebookRequestDialog", new ab((byte)0));
        hashmap.put("ffiFacebookGraphRequest", new e((byte)0));
        hashmap.put("ffiFacebookPostPhoto", new g((byte)0));
        hashmap.put("ffiGetAccessToken", new k((byte)0));
        hashmap.put("ffiShowTweetSheet", new ac((byte)0));
        hashmap.put("ffiShowTweetSheetWithImage", new ad((byte)0));
        hashmap.put("ffiIsTweetSheetAvailable", new r((byte)0));
        hashmap.put("ffiIsGenericShareAvailable", new p((byte)0));
        hashmap.put("ffiShareGeneric", new i((byte)0));
        hashmap.put("ffiShareGenericWithImage", new j((byte)0));
        hashmap.put("ffiPublishInstall", new u((byte)0));
        hashmap.put("ffiGetFbAccessExpiry", new l((byte)0));
        hashmap.put("ffiRequestNewReadPermissions", new w((byte)0));
        hashmap.put("ffiRequestNewPublishPermissions", new v((byte)0));
        hashmap.put("ffiFacebookLogAppEvent", new f((byte)0));
        hashmap.put("ffiFacebookRequestAppUserID", new h((byte)0));
        hashmap.put("ffiPresentFacebookProfileOrPage", new t((byte)0));
        hashmap.put("ffiIsServiceAvailable", new q((byte)0));
        hashmap.put("ffiDisplaySocialView", new c((byte)0));
        hashmap.put("ffiIsPermissionGranted", new com.milkmangames.extensions.android.goviral.f(this));
        hashmap.put("ffiGetDeclinedPermissions", new com.milkmangames.extensions.android.goviral.g(this));
        hashmap.put("ffiIsFacebookShareDialogAvailable", new com.milkmangames.extensions.android.goviral.h(this));
        hashmap.put("ffiShowFacebookShareDialog", new com.milkmangames.extensions.android.goviral.i(this));
        hashmap.put("ffiIsFacebookGraphDialogAvailable", new com.milkmangames.extensions.android.goviral.j(this));
        hashmap.put("ffiShowFacebookGraphDialog", new com.milkmangames.extensions.android.goviral.k(this));
        hashmap.put("ffiStageFacebookImage", new com.milkmangames.extensions.android.goviral.l(this));
        hashmap.put("ffiIsFacebookMessageDialogAvailable", new com.milkmangames.extensions.android.goviral.m(this));
        hashmap.put("ffiShowFacebookMessageDialog", new com.milkmangames.extensions.android.goviral.o(this));
        hashmap.put("ffiRefreshSessionPermissions", new com.milkmangames.extensions.android.goviral.p(this));
        return hashmap;
    }


    // Unreferenced inner class com/milkmangames/extensions/android/goviral/b$1

/* anonymous class */
    static final class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[SessionState.values().length];
            try
            {
                a[SessionState.CLOSED.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                a[SessionState.CLOSED_LOGIN_FAILED.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                a[SessionState.OPENED.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[SessionState.OPENED_TOKEN_UPDATED.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[SessionState.CREATED.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[SessionState.CREATED_TOKEN_LOADED.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[SessionState.OPENING.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror)
            {
                return;
            }
        }
    }

}
