// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.urbanairship.preference;

import android.content.Context;
import android.preference.DialogPreference;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TimePicker;
import java.util.Calendar;

// Referenced classes of package com.urbanairship.preference:
//            UAPreference

abstract class QuietTimePickerPreference extends DialogPreference
    implements UAPreference
{

    private TimePicker a;
    private long b;

    public QuietTimePickerPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = -1L;
    }

    public QuietTimePickerPreference(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = null;
        b = -1L;
    }

    private Calendar c()
    {
        Calendar calendar = Calendar.getInstance();
        if (b != -1L)
        {
            calendar.setTimeInMillis(b);
        }
        return calendar;
    }

    public void a(Object obj)
    {
        b = ((Long)obj).longValue();
        notifyChanged();
    }

    public String b()
    {
        return DateFormat.getTimeFormat(getContext()).format(c().getTime());
    }

    public CharSequence getSummary()
    {
        return b();
    }

    protected View onCreateDialogView()
    {
        a = new TimePicker(getContext());
        a.setIs24HourView(Boolean.valueOf(DateFormat.is24HourFormat(getContext())));
        Calendar calendar = c();
        a.setCurrentHour(Integer.valueOf(calendar.get(11)));
        a.setCurrentMinute(Integer.valueOf(calendar.get(12)));
        return a;
    }

    public View onCreateView(ViewGroup viewgroup)
    {
        viewgroup = super.onCreateView(viewgroup);
        viewgroup.setContentDescription(a().toString());
        return viewgroup;
    }

    public void onDialogClosed(boolean flag)
    {
        if (flag)
        {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, a.getCurrentHour().intValue());
            calendar.set(12, a.getCurrentMinute().intValue());
            long l = calendar.getTimeInMillis();
            if (callChangeListener(Long.valueOf(l)))
            {
                b = l;
                notifyChanged();
            }
        }
    }

    protected boolean shouldPersist()
    {
        return false;
    }
}
