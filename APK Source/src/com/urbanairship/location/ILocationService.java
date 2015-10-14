// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.location;

import android.location.Criteria;
import android.location.Location;
import android.os.IInterface;

public interface ILocationService
    extends IInterface
{

    public abstract Location a();

    public abstract void a(Criteria criteria);

    public abstract void a(Location location, int i, int j);

    public abstract Criteria b();

    public abstract void b(Criteria criteria);

    public abstract void c();

    public abstract String d();

    public abstract String e();
}
