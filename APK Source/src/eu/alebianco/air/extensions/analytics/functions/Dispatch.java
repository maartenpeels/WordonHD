// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.alebianco.air.extensions.analytics.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.google.analytics.tracking.android.GAServiceManager;

public class Dispatch
    implements FREFunction
{

    public Dispatch()
    {
    }

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        GAServiceManager.getInstance().dispatch();
        return null;
    }
}
