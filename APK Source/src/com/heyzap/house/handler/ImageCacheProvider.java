// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.house.handler;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;

public class ImageCacheProvider extends ContentProvider
{

    private static final String URI_PREFIX = "content://com.heyzap.imagecache";

    public ImageCacheProvider()
    {
    }

    public static String constructUri(String s)
    {
        if (Uri.parse(s).isAbsolute())
        {
            return s;
        } else
        {
            return (new StringBuilder()).append("content://com.heyzap.imagecache").append(s).toString();
        }
    }

    public int delete(Uri uri, String s, String as[])
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public String getType(Uri uri)
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public boolean onCreate()
    {
        return true;
    }

    public ParcelFileDescriptor openFile(Uri uri, String s)
        throws FileNotFoundException
    {
        return ParcelFileDescriptor.open(new File(uri.getPath()), 0x10000000);
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }
}
