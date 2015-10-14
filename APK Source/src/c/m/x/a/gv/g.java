// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

// Referenced classes of package c.m.x.a.gv:
//            s, j, ae, d, 
//            h

public final class g extends Activity
{
    static final class a
    {

        public static final int a[] = {
            0x1010003, 0x10100d0, 0x10100d1
        };

    }

    static final class b
    {

        Object a;
        Object b;
        ae c;
        ArrayList d;
        ae e;

        b()
        {
        }
    }


    final Handler a;
    final j b;
    final h c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    ae l;
    s m;

    private static String a(View view)
    {
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder(128);
        stringbuilder.append(view.getClass().getName());
        stringbuilder.append('{');
        stringbuilder.append(Integer.toHexString(System.identityHashCode(view)));
        stringbuilder.append(' ');
        view.getVisibility();
        JVM INSTR lookupswitch 3: default 88
    //                   0: 474
    //                   4: 484
    //                   8: 494;
           goto _L1 _L2 _L3 _L4
_L1:
        stringbuilder.append('.');
_L11:
        char c1;
        Object obj;
        String s1;
        int i1;
        if (view.isFocusable())
        {
            c1 = 'F';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.isEnabled())
        {
            c1 = 'E';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.willNotDraw())
        {
            c1 = '.';
        } else
        {
            c1 = 'D';
        }
        stringbuilder.append(c1);
        if (view.isHorizontalScrollBarEnabled())
        {
            c1 = 'H';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.isVerticalScrollBarEnabled())
        {
            c1 = 'V';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.isClickable())
        {
            c1 = 'C';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.isLongClickable())
        {
            c1 = 'L';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        stringbuilder.append(' ');
        if (view.isFocused())
        {
            c1 = 'F';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.isSelected())
        {
            c1 = 'S';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        if (view.isPressed())
        {
            c1 = 'P';
        } else
        {
            c1 = '.';
        }
        stringbuilder.append(c1);
        stringbuilder.append(' ');
        stringbuilder.append(view.getLeft());
        stringbuilder.append(',');
        stringbuilder.append(view.getTop());
        stringbuilder.append('-');
        stringbuilder.append(view.getRight());
        stringbuilder.append(',');
        stringbuilder.append(view.getBottom());
        i1 = view.getId();
        if (i1 == -1) goto _L6; else goto _L5
_L5:
        stringbuilder.append(" #");
        stringbuilder.append(Integer.toHexString(i1));
        obj = view.getResources();
        if (i1 == 0 || obj == null) goto _L6; else goto _L7
_L7:
        0xff000000 & i1;
        JVM INSTR lookupswitch 2: default 400
    //                   16777216: 570
    //                   2130706432: 564;
           goto _L8 _L9 _L10
_L8:
        view = ((Resources) (obj)).getResourcePackageName(i1);
_L12:
        s1 = ((Resources) (obj)).getResourceTypeName(i1);
        obj = ((Resources) (obj)).getResourceEntryName(i1);
        stringbuilder.append(" ");
        stringbuilder.append(view);
        stringbuilder.append(":");
        stringbuilder.append(s1);
        stringbuilder.append("/");
        stringbuilder.append(((String) (obj)));
_L6:
        stringbuilder.append("}");
        return stringbuilder.toString();
_L2:
        stringbuilder.append('V');
          goto _L11
_L3:
        stringbuilder.append('I');
          goto _L11
_L4:
        stringbuilder.append('G');
          goto _L11
_L10:
        view = "app";
          goto _L12
_L9:
        view = "android";
          goto _L12
        view;
          goto _L6
    }

    private void a(String s1, PrintWriter printwriter, View view)
    {
        printwriter.print(s1);
        if (view != null) goto _L2; else goto _L1
_L1:
        printwriter.println("null");
_L4:
        return;
_L2:
        printwriter.println(a(view));
        if (view instanceof ViewGroup)
        {
            view = (ViewGroup)view;
            int j1 = view.getChildCount();
            if (j1 > 0)
            {
                s1 = (new StringBuilder()).append(s1).append("  ").toString();
                int i1 = 0;
                while (i1 < j1) 
                {
                    a(s1, printwriter, view.getChildAt(i1));
                    i1++;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(boolean flag)
    {
        if (!g)
        {
            g = true;
            h = flag;
            a.removeMessages(1);
            if (k)
            {
                k = false;
                if (m != null)
                {
                    if (!h)
                    {
                        m.c();
                    } else
                    {
                        m.d();
                    }
                }
            }
            b.m();
        }
    }

    public static void b()
    {
    }

    final s a(String s1, boolean flag, boolean flag1)
    {
        if (l == null)
        {
            l = new ae();
        }
        s s2 = (s)l.get(s1);
        if (s2 == null)
        {
            if (flag1)
            {
                s2 = new s(s1, this, flag);
                l.put(s1, s2);
            }
            return s2;
        } else
        {
            s2.a(this);
            return s2;
        }
    }

    public final void a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            invalidateOptionsMenu();
            return;
        } else
        {
            i = true;
            return;
        }
    }

    public final void a(d d1, Intent intent, int i1)
    {
        if (i1 == -1)
        {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((0xffff0000 & i1) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else
        {
            super.startActivityForResult(intent, (d1.mIndex + 1 << 16) + (0xffff & i1));
            return;
        }
    }

    final void a(String s1)
    {
        if (l != null)
        {
            s s2 = (s)l.get(s1);
            if (s2 != null && !s2.g)
            {
                s2.h();
                l.remove(s1);
            }
        }
    }

    public final void dump(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        printwriter.print(s1);
        printwriter.print("Local FragmentActivity ");
        printwriter.print(Integer.toHexString(System.identityHashCode(this)));
        printwriter.println(" State:");
        String s2 = (new StringBuilder()).append(s1).append("  ").toString();
        printwriter.print(s2);
        printwriter.print("mCreated=");
        printwriter.print(d);
        printwriter.print("mResumed=");
        printwriter.print(e);
        printwriter.print(" mStopped=");
        printwriter.print(f);
        printwriter.print(" mReallyStopped=");
        printwriter.println(g);
        printwriter.print(s2);
        printwriter.print("mLoadersStarted=");
        printwriter.println(k);
        if (m != null)
        {
            printwriter.print(s1);
            printwriter.print("Loader Manager ");
            printwriter.print(Integer.toHexString(System.identityHashCode(m)));
            printwriter.println(":");
            m.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
        b.a(s1, filedescriptor, printwriter, as);
        printwriter.print(s1);
        printwriter.println("View Hierarchy:");
        a((new StringBuilder()).append(s1).append("  ").toString(), printwriter, getWindow().getDecorView());
    }

    protected final void onActivityResult(int i1, int j1, Intent intent)
    {
        b.f();
        int k1 = i1 >> 16;
        if (k1 != 0)
        {
            k1--;
            if (b.f == null || k1 < 0 || k1 >= b.f.size())
            {
                Log.w("FragmentActivity", (new StringBuilder("Activity result fragment index out of range: 0x")).append(Integer.toHexString(i1)).toString());
                return;
            }
            d d1 = (d)b.f.get(k1);
            if (d1 == null)
            {
                Log.w("FragmentActivity", (new StringBuilder("Activity result no fragment exists for index: 0x")).append(Integer.toHexString(i1)).toString());
                return;
            } else
            {
                d1.onActivityResult(0xffff & i1, j1, intent);
                return;
            }
        } else
        {
            super.onActivityResult(i1, j1, intent);
            return;
        }
    }

    public final void onBackPressed()
    {
        if (!b.a())
        {
            finish();
        }
    }

    public final void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        b.a(configuration);
    }

    protected final void onCreate(Bundle bundle)
    {
        b.a(this, c, null);
        if (getLayoutInflater().getFactory() == null)
        {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        b b1 = (b)getLastNonConfigurationInstance();
        if (b1 != null)
        {
            l = b1.e;
        }
        if (bundle != null)
        {
            android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            j j1 = b;
            if (b1 != null)
            {
                bundle = b1.d;
            } else
            {
                bundle = null;
            }
            j1.a(parcelable, bundle);
        }
        b.g();
    }

    public final boolean onCreatePanelMenu(int i1, Menu menu)
    {
        if (i1 == 0)
        {
            boolean flag = super.onCreatePanelMenu(i1, menu);
            boolean flag1 = b.a(menu, getMenuInflater());
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                return flag | flag1;
            } else
            {
                return true;
            }
        } else
        {
            return super.onCreatePanelMenu(i1, menu);
        }
    }

    public final View onCreateView(String s1, Context context, AttributeSet attributeset)
    {
        if (!"fragment".equals(s1))
        {
            return super.onCreateView(s1, context, attributeset);
        }
        String s3 = attributeset.getAttributeValue(null, "class");
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, a.a);
        String s2 = s3;
        if (s3 == null)
        {
            s2 = typedarray.getString(0);
        }
        int j1 = typedarray.getResourceId(1, -1);
        s3 = typedarray.getString(2);
        typedarray.recycle();
        if (!c.m.x.a.gv.d.isSupportFragmentClass(this, s2))
        {
            return super.onCreateView(s1, context, attributeset);
        }
        if (j1 != -1)
        {
            context = b.a(j1);
        } else
        {
            context = null;
        }
        s1 = context;
        if (context == null)
        {
            s1 = context;
            if (s3 != null)
            {
                s1 = b.a(s3);
            }
        }
        context = s1;
        if (s1 == null)
        {
            context = b.a(0);
        }
        if (j.a)
        {
            Log.v("FragmentActivity", (new StringBuilder("onCreateView: id=0x")).append(Integer.toHexString(j1)).append(" fname=").append(s2).append(" existing=").append(context).toString());
        }
        if (context == null)
        {
            context = c.m.x.a.gv.d.instantiate(this, s2);
            context.mFromLayout = true;
            int i1;
            if (j1 != 0)
            {
                i1 = j1;
            } else
            {
                i1 = 0;
            }
            context.mFragmentId = i1;
            context.mContainerId = 0;
            context.mTag = s3;
            context.mInLayout = true;
            context.mFragmentManager = b;
            context.onInflate(this, attributeset, ((d) (context)).mSavedFragmentState);
            b.a(context, true);
        } else
        {
            if (((d) (context)).mInLayout)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Duplicate id 0x").append(Integer.toHexString(j1)).append(", tag ").append(s3).append(", or parent id 0x").append(Integer.toHexString(0)).append(" with another fragment for ").append(s2).toString());
            }
            context.mInLayout = true;
            if (!((d) (context)).mRetaining)
            {
                context.onInflate(this, attributeset, ((d) (context)).mSavedFragmentState);
            }
            b.b(context);
        }
        if (((d) (context)).mView == null)
        {
            throw new IllegalStateException((new StringBuilder("Fragment ")).append(s2).append(" did not create a view.").toString());
        }
        if (j1 != 0)
        {
            ((d) (context)).mView.setId(j1);
        }
        if (((d) (context)).mView.getTag() == null)
        {
            ((d) (context)).mView.setTag(s3);
        }
        return ((d) (context)).mView;
    }

    protected final void onDestroy()
    {
        super.onDestroy();
        a(false);
        b.o();
        if (m != null)
        {
            m.h();
        }
    }

    public final boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (android.os.Build.VERSION.SDK_INT < 5 && i1 == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public final void onLowMemory()
    {
        super.onLowMemory();
        b.p();
    }

    public final boolean onMenuItemSelected(int i1, MenuItem menuitem)
    {
        if (super.onMenuItemSelected(i1, menuitem))
        {
            return true;
        }
        switch (i1)
        {
        default:
            return false;

        case 0: // '\0'
            return b.a(menuitem);

        case 6: // '\006'
            return b.b(menuitem);
        }
    }

    protected final void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        b.f();
    }

    public final void onPanelClosed(int i1, Menu menu)
    {
        i1;
        JVM INSTR tableswitch 0 0: default 20
    //                   0 27;
           goto _L1 _L2
_L1:
        super.onPanelClosed(i1, menu);
        return;
_L2:
        b.b(menu);
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected final void onPause()
    {
        super.onPause();
        e = false;
        if (a.hasMessages(2))
        {
            a.removeMessages(2);
            b.j();
        }
        b.k();
    }

    protected final void onPostResume()
    {
        super.onPostResume();
        a.removeMessages(2);
        b.j();
        b.c();
    }

    public final boolean onPreparePanel(int i1, View view, Menu menu)
    {
        if (i1 == 0 && menu != null)
        {
            if (i)
            {
                i = false;
                menu.clear();
                onCreatePanelMenu(i1, menu);
            }
            return super.onPreparePanel(0, view, menu) | b.a(menu);
        } else
        {
            return super.onPreparePanel(i1, view, menu);
        }
    }

    protected final void onResume()
    {
        super.onResume();
        a.sendEmptyMessage(2);
        e = true;
        b.c();
    }

    public final Object onRetainNonConfigurationInstance()
    {
        if (f)
        {
            a(true);
        }
        ArrayList arraylist = b.d();
        boolean flag;
        if (l != null)
        {
            int k1 = l.size();
            s as[] = new s[k1];
            for (int i1 = k1 - 1; i1 >= 0; i1--)
            {
                as[i1] = (s)l.b(i1);
            }

            int j1 = 0;
            flag = false;
            while (j1 < k1) 
            {
                s s1 = as[j1];
                if (s1.g)
                {
                    flag = true;
                } else
                {
                    s1.h();
                    l.remove(s1.d);
                }
                j1++;
            }
        } else
        {
            flag = false;
        }
        if (arraylist == null && !flag)
        {
            return null;
        } else
        {
            b b1 = new b();
            b1.a = null;
            b1.b = null;
            b1.c = null;
            b1.d = arraylist;
            b1.e = l;
            return b1;
        }
    }

    protected final void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        android.os.Parcelable parcelable = b.e();
        if (parcelable != null)
        {
            bundle.putParcelable("android:support:fragments", parcelable);
        }
    }

    protected final void onStart()
    {
        super.onStart();
        f = false;
        g = false;
        a.removeMessages(1);
        if (!d)
        {
            d = true;
            b.h();
        }
        b.f();
        b.c();
        if (!k)
        {
            k = true;
            int i1;
            if (m != null)
            {
                m.b();
            } else
            if (!j)
            {
                m = a("(root)", k, false);
                if (m != null && !m.f)
                {
                    m.b();
                }
            }
            j = true;
        }
        b.i();
        if (l != null)
        {
            int k1 = l.size();
            s as[] = new s[k1];
            for (i1 = k1 - 1; i1 >= 0; i1--)
            {
                as[i1] = (s)l.b(i1);
            }

            for (int j1 = 0; j1 < k1; j1++)
            {
                s s1 = as[j1];
                s1.e();
                s1.g();
            }

        }
    }

    protected final void onStop()
    {
        super.onStop();
        f = true;
        a.sendEmptyMessage(1);
        b.l();
    }

    public final void startActivityForResult(Intent intent, int i1)
    {
        if (i1 != -1 && (0xffff0000 & i1) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else
        {
            super.startActivityForResult(intent, i1);
            return;
        }
    }
}
