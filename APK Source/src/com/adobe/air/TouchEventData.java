// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


public class TouchEventData
{

    public float mContactX;
    public float mContactY;
    public float mHistory[];
    public boolean mIsPrimaryPoint;
    public int mMetaState;
    public int mPointerID;
    public float mPressure;
    public int mTouchEventType;
    public float mXCoord;
    public float mYCoord;

    public TouchEventData(int i, float f, float f1, float f2, int j, float f3, float f4, 
            boolean flag, float af[], int k)
    {
        mTouchEventType = i;
        mXCoord = f;
        mYCoord = f1;
        mPressure = f2;
        mPointerID = j;
        mContactX = f3;
        mContactY = f4;
        mIsPrimaryPoint = flag;
        mHistory = af;
        mMetaState = k;
    }
}
