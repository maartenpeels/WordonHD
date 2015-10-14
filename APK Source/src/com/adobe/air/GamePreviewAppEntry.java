// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;
import java.net.URISyntaxException;

// Referenced classes of package com.adobe.air:
//            ResourceIdMap

public class GamePreviewAppEntry extends Activity
{

    private static final String GAME_PREVIEW_APP_XML = "assets/META-INF/AIR/GamePreview-app.xml";
    private static final String GAME_PREVIEW_SRC_DIR = "assets";
    private static final String GAME_PREVIEW_SWF = "assets/GamePreview.swf";
    private static final String LOG_TAG = "AppEntry";
    private static final String RESOURCE_BUTTON_EXIT = "string.button_exit";
    private static final String RESOURCE_BUTTON_INSTALL = "string.button_install";
    private static final String RESOURCE_CLASS = "air.com.adobe.appentry.R";
    private static final String RESOURCE_TEXT_RUNTIME_REQUIRED = "string.text_runtime_required";
    private static final String RESOURCE_TITLE_ADOBE_AIR = "string.title_adobe_air";
    private static String RUNTIME_PACKAGE_ID = "com.adobe.air";
    private static Object sAndroidActivityWrapper = null;
    private static Class sAndroidActivityWrapperClass;
    private static DexClassLoader sDloader;
    private static boolean sRuntimeClassesLoaded = false;

    public GamePreviewAppEntry()
    {
    }

    private void BroadcastIntent(String s, String s1)
    {
        try
        {
            startActivity(Intent.parseUri(s1, 0).setAction(s).addFlags(0x10000000));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    private transient Object InvokeMethod(Method method, Object aobj[])
    {
        if (!sRuntimeClassesLoaded)
        {
            return null;
        }
        if (aobj == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        return method.invoke(sAndroidActivityWrapper, aobj);
        method = ((Method) (method.invoke(sAndroidActivityWrapper, new Object[0])));
        return method;
        method;
        return null;
    }

    private void InvokeWrapperOnCreate()
    {
        try
        {
            Method method = sAndroidActivityWrapperClass.getMethod("onCreate", new Class[] {
                android/app/Activity, [Ljava/lang/String;
            });
            Boolean boolean1 = new Boolean(false);
            Boolean boolean2 = new Boolean(false);
            Boolean boolean3 = new Boolean(true);
            String s = getIntent().getData().getHost();
            InvokeMethod(method, new Object[] {
                this, new String[] {
                    "assets/META-INF/AIR/GamePreview-app.xml", "assets", "-nodebug", boolean1.toString(), boolean2.toString(), boolean3.toString(), s
                }
            });
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private static void KillSelf()
    {
        Process.killProcess(Process.myPid());
    }

    private void createActivityWrapper(boolean flag)
    {
        if (flag)
        {
            try
            {
                sAndroidActivityWrapper = sAndroidActivityWrapperClass.getMethod("CreateAndroidActivityWrapper", new Class[] {
                    android/app/Activity, java/lang/Boolean
                }).invoke(null, new Object[] {
                    this, Boolean.valueOf(flag)
                });
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        }
        sAndroidActivityWrapper = sAndroidActivityWrapperClass.getMethod("CreateAndroidActivityWrapper", new Class[] {
            android/app/Activity
        }).invoke(null, new Object[] {
            this
        });
        return;
    }

    private boolean isRuntimeInstalled()
    {
        PackageManager packagemanager = getPackageManager();
        try
        {
            packagemanager.getPackageInfo(RUNTIME_PACKAGE_ID, 256);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    private boolean isRuntimeOnExternalStorage()
    {
        PackageManager packagemanager = getPackageManager();
        int i;
        try
        {
            i = packagemanager.getApplicationInfo(RUNTIME_PACKAGE_ID, 8192).flags;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
label0:
        {
            if ((i & 0x40000) == 0x40000)
            {
                return true;
            }
            break label0;
        }
    }

    private void launchAIRService()
    {
        try
        {
            Intent intent = new Intent("com.adobe.air.AIRServiceAction");
            intent.setClassName(RUNTIME_PACKAGE_ID, "com.adobe.air.AIRService");
            bindService(intent, new ServiceConnection() {

                final GamePreviewAppEntry this$0;

                public void onServiceConnected(ComponentName componentname, IBinder ibinder)
                {
                    unbindService(this);
                    loadSharedRuntimeDex();
                    createActivityWrapper(false);
                    if (GamePreviewAppEntry.sRuntimeClassesLoaded)
                    {
                        InvokeWrapperOnCreate();
                        return;
                    } else
                    {
                        GamePreviewAppEntry.KillSelf();
                        return;
                    }
                }

                public void onServiceDisconnected(ComponentName componentname)
                {
                }

            
            {
                this$0 = GamePreviewAppEntry.this;
                super();
            }
            }, 1);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void launchMarketPlaceForAIR()
    {
        Object obj = getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
        Object obj1;
        if (obj != null)
        {
            try
            {
                obj = (String)((Bundle) (obj)).get("airDownloadURL");
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                obj = null;
            }
        } else
        {
            obj = null;
        }
        obj1 = obj;
        if (obj == null)
        {
            obj1 = (new StringBuilder()).append("market://details?id=").append(RUNTIME_PACKAGE_ID).toString();
        }
        try
        {
            BroadcastIntent("android.intent.action.VIEW", ((String) (obj1)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
    }

    private boolean loadCaptiveRuntimeClasses()
    {
        try
        {
            sAndroidActivityWrapperClass = Class.forName("com.adobe.air.AndroidActivityWrapper");
        }
        catch (Exception exception)
        {
            return false;
        }
        try
        {
            if (sAndroidActivityWrapperClass != null)
            {
                sRuntimeClassesLoaded = true;
            }
        }
        catch (Exception exception1)
        {
            return true;
        }
        return true;
    }

    private void loadSharedRuntimeDex()
    {
        try
        {
            if (!sRuntimeClassesLoaded)
            {
                Context context = createPackageContext(RUNTIME_PACKAGE_ID, 3);
                sDloader = new DexClassLoader(RUNTIME_PACKAGE_ID, getFilesDir().getAbsolutePath(), null, context.getClassLoader());
                sAndroidActivityWrapperClass = sDloader.loadClass("com.adobe.air.AndroidActivityWrapper");
                if (sAndroidActivityWrapperClass != null)
                {
                    sRuntimeClassesLoaded = true;
                }
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void showDialog(int i, String s, int j, int k)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle(i);
        builder.setMessage(s);
        builder.setPositiveButton(j, new android.content.DialogInterface.OnClickListener() {

            final GamePreviewAppEntry this$0;

            public void onClick(DialogInterface dialoginterface, int l)
            {
                launchMarketPlaceForAIR();
                System.exit(0);
            }

            
            {
                this$0 = GamePreviewAppEntry.this;
                super();
            }
        });
        builder.setNegativeButton(k, new android.content.DialogInterface.OnClickListener() {

            final GamePreviewAppEntry this$0;

            public void onClick(DialogInterface dialoginterface, int l)
            {
                System.exit(0);
            }

            
            {
                this$0 = GamePreviewAppEntry.this;
                super();
            }
        });
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final GamePreviewAppEntry this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                System.exit(0);
            }

            
            {
                this$0 = GamePreviewAppEntry.this;
                super();
            }
        });
        builder.show();
    }

    private void showRuntimeNotInstalledDialog()
    {
        ResourceIdMap resourceidmap = new ResourceIdMap("air.com.adobe.appentry.R");
        String s = (new StringBuilder()).append(getString(resourceidmap.getId("string.text_runtime_required"))).append(getString(resourceidmap.getId("string.text_install_runtime"))).toString();
        showDialog(resourceidmap.getId("string.title_adobe_air"), s, resourceidmap.getId("string.button_install"), resourceidmap.getId("string.button_exit"));
    }

    private void showRuntimeOnExternalStorageDialog()
    {
        ResourceIdMap resourceidmap = new ResourceIdMap("air.com.adobe.appentry.R");
        String s = (new StringBuilder()).append(getString(resourceidmap.getId("string.text_runtime_required"))).append(getString(resourceidmap.getId("string.text_runtime_on_external_storage"))).toString();
        showDialog(resourceidmap.getId("string.title_adobe_air"), s, resourceidmap.getId("string.button_install"), resourceidmap.getId("string.button_exit"));
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionevent)
    {
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("dispatchGenericMotionEvent", new Class[] {
                android/view/MotionEvent, Boolean.TYPE
            }), new Object[] {
                motionevent, Boolean.valueOf(false)
            });
        }
        catch (Exception exception) { }
        return false || super.dispatchGenericMotionEvent(motionevent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("dispatchKeyEvent", new Class[] {
                android/view/KeyEvent, Boolean.TYPE
            }), new Object[] {
                keyevent, Boolean.valueOf(false)
            });
        }
        catch (Exception exception) { }
        return false || super.dispatchKeyEvent(keyevent);
    }

    public void finishActivityFromChild(Activity activity, int i)
    {
        super.finishActivityFromChild(activity, i);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("finishActivityFromChild", new Class[] {
                android/app/Activity, Integer.TYPE
            }), new Object[] {
                activity, Integer.valueOf(i)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            return;
        }
    }

    public void finishFromChild(Activity activity)
    {
        super.finishFromChild(activity);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("finishFromChild", new Class[] {
                android/app/Activity
            }), new Object[] {
                activity
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        try
        {
            if (sRuntimeClassesLoaded)
            {
                InvokeMethod(sAndroidActivityWrapperClass.getMethod("onActivityResult", new Class[] {
                    Integer.TYPE, Integer.TYPE, android/content/Intent
                }), new Object[] {
                    Integer.valueOf(i), Integer.valueOf(j), intent
                });
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return;
        }
    }

    protected void onApplyThemeResource(android.content.res.Resources.Theme theme, int i, boolean flag)
    {
        super.onApplyThemeResource(theme, i, flag);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onApplyThemeResource", new Class[] {
                android/content/res/Resources$Theme, Integer.TYPE, Boolean.TYPE
            }), new Object[] {
                theme, Integer.valueOf(i), Boolean.valueOf(flag)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (android.content.res.Resources.Theme theme)
        {
            return;
        }
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onAttachedToWindow", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onBackPressed", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onChildTitleChanged(Activity activity, CharSequence charsequence)
    {
        super.onChildTitleChanged(activity, charsequence);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onChildTitleChanged", new Class[] {
                android/app/Activity, java/lang/CharSequence
            }), new Object[] {
                activity, charsequence
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onConfigurationChanged", new Class[] {
                android/content/res/Configuration
            }), new Object[] {
                configuration
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Configuration configuration)
        {
            return;
        }
    }

    public void onContentChanged()
    {
        super.onContentChanged();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onContentChanged", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        boolean flag = super.onContextItemSelected(menuitem);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onContextItemSelected", new Class[] {
                android/view/MenuItem, Boolean.TYPE
            }), new Object[] {
                menuitem, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (MenuItem menuitem)
        {
            return flag;
        }
        return flag1;
    }

    public void onContextMenuClosed(Menu menu)
    {
        super.onContextMenuClosed(menu);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onContextMenuClosed", new Class[] {
                android/view/Menu
            }), new Object[] {
                menu
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        boolean flag = loadCaptiveRuntimeClasses();
        if (!flag)
        {
            if (!sRuntimeClassesLoaded && !isRuntimeInstalled())
            {
                if (isRuntimeOnExternalStorage())
                {
                    showRuntimeOnExternalStorageDialog();
                    return;
                } else
                {
                    showRuntimeNotInstalledDialog();
                    return;
                }
            }
            loadSharedRuntimeDex();
        }
        if (sRuntimeClassesLoaded)
        {
            createActivityWrapper(flag);
            InvokeWrapperOnCreate();
            return;
        }
        if (flag)
        {
            KillSelf();
            return;
        } else
        {
            launchAIRService();
            return;
        }
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateContextMenu", new Class[] {
                android/view/ContextMenu, android/view/View, android/view/ContextMenu$ContextMenuInfo
            }), new Object[] {
                contextmenu, view, contextmenuinfo
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ContextMenu contextmenu)
        {
            return;
        }
    }

    public CharSequence onCreateDescription()
    {
        CharSequence charsequence = super.onCreateDescription();
        CharSequence charsequence1;
        try
        {
            charsequence1 = (CharSequence)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateDescription", new Class[] {
                java/lang/CharSequence
            }), new Object[] {
                charsequence
            });
        }
        catch (Exception exception)
        {
            return charsequence;
        }
        return charsequence1;
    }

    protected Dialog onCreateDialog(int i)
    {
        Dialog dialog = super.onCreateDialog(i);
        Dialog dialog1;
        try
        {
            dialog1 = (Dialog)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateDialog", new Class[] {
                Integer.TYPE, android/app/Dialog
            }), new Object[] {
                Integer.valueOf(i), dialog
            });
        }
        catch (Exception exception)
        {
            return dialog;
        }
        return dialog1;
    }

    protected Dialog onCreateDialog(int i, Bundle bundle)
    {
        Dialog dialog = super.onCreateDialog(i, bundle);
        try
        {
            bundle = (Dialog)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateDialog", new Class[] {
                Integer.TYPE, android/os/Bundle, android/app/Dialog
            }), new Object[] {
                Integer.valueOf(i), bundle, dialog
            });
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            return dialog;
        }
        return bundle;
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        boolean flag = super.onCreateOptionsMenu(menu);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateOptionsMenu", new Class[] {
                android/view/Menu, Boolean.TYPE
            }), new Object[] {
                menu, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onCreatePanelMenu(int i, Menu menu)
    {
        boolean flag = super.onCreatePanelMenu(i, menu);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreatePanelMenu", new Class[] {
                Integer.TYPE, android/view/Menu, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), menu, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return flag;
        }
        return flag1;
    }

    public View onCreatePanelView(int i)
    {
        View view = super.onCreatePanelView(i);
        View view1;
        try
        {
            view1 = (View)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreatePanelView", new Class[] {
                Integer.TYPE, android/view/View
            }), new Object[] {
                Integer.valueOf(i), view
            });
        }
        catch (Exception exception)
        {
            return view;
        }
        return view1;
    }

    public boolean onCreateThumbnail(Bitmap bitmap, Canvas canvas)
    {
        boolean flag = super.onCreateThumbnail(bitmap, canvas);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateThumbnail", new Class[] {
                android/graphics/Bitmap, android/graphics/Canvas, Boolean.TYPE
            }), new Object[] {
                bitmap, canvas, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            return flag;
        }
        return flag1;
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        View view = super.onCreateView(s, context, attributeset);
        try
        {
            s = (View)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onCreateView", new Class[] {
                java/lang/String, android/content/Context, android/util/AttributeSet, android/view/View
            }), new Object[] {
                s, context, attributeset, view
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return view;
        }
        return s;
    }

    public void onDestroy()
    {
        super.onDestroy();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onDestroy", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onDetachedFromWindow", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag = super.onKeyDown(i, keyevent);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onKeyDown", new Class[] {
                Integer.TYPE, android/view/KeyEvent, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), keyevent, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (KeyEvent keyevent)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyevent)
    {
        boolean flag = super.onKeyLongPress(i, keyevent);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onKeyLongPress", new Class[] {
                Integer.TYPE, android/view/KeyEvent, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), keyevent, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (KeyEvent keyevent)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onKeyMultiple(int i, int j, KeyEvent keyevent)
    {
        boolean flag = super.onKeyMultiple(i, j, keyevent);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onKeyMultiple", new Class[] {
                Integer.TYPE, Integer.TYPE, android/view/KeyEvent, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), Integer.valueOf(j), keyevent, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (KeyEvent keyevent)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag = super.onKeyUp(i, keyevent);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onKeyUp", new Class[] {
                Integer.TYPE, android/view/KeyEvent, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), keyevent, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (KeyEvent keyevent)
        {
            return flag;
        }
        return flag1;
    }

    public void onLowMemory()
    {
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onLowMemory", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem)
    {
        boolean flag = super.onMenuItemSelected(i, menuitem);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onMenuItemSelected", new Class[] {
                Integer.TYPE, android/view/MenuItem, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), menuitem, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (MenuItem menuitem)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onMenuOpened(int i, Menu menu)
    {
        boolean flag = super.onMenuOpened(i, menu);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onMenuOpened", new Class[] {
                Integer.TYPE, android/view/Menu, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), menu, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return flag;
        }
        return flag1;
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onNewIntent", new Class[] {
                android/content/Intent
            }), new Object[] {
                intent
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag = super.onOptionsItemSelected(menuitem);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onOptionsItemSelected", new Class[] {
                android/view/MenuItem, Boolean.TYPE
            }), new Object[] {
                menuitem, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (MenuItem menuitem)
        {
            return flag;
        }
        return flag1;
    }

    public void onOptionsMenuClosed(Menu menu)
    {
        super.onOptionsMenuClosed(menu);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onOptionsMenuClosed", new Class[] {
                android/view/Menu
            }), new Object[] {
                menu
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return;
        }
    }

    public void onPanelClosed(int i, Menu menu)
    {
        super.onPanelClosed(i, menu);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPanelClosed", new Class[] {
                Integer.TYPE, android/view/Menu
            }), new Object[] {
                Integer.valueOf(i), menu
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        try
        {
            if (sRuntimeClassesLoaded)
            {
                InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPause", new Class[0]), new Object[0]);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPostCreate", new Class[] {
                android/os/Bundle
            }), new Object[] {
                bundle
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            return;
        }
    }

    protected void onPostResume()
    {
        super.onPostResume();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPostResume", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog)
    {
        super.onPrepareDialog(i, dialog);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPrepareDialog", new Class[] {
                android/R$id, android/app/Dialog
            }), new Object[] {
                Integer.valueOf(i), dialog
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Dialog dialog)
        {
            return;
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog, Bundle bundle)
    {
        super.onPrepareDialog(i, dialog, bundle);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPrepareDialog", new Class[] {
                android/R$id, android/app/Dialog, android/os/Bundle
            }), new Object[] {
                Integer.valueOf(i), dialog, bundle
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Dialog dialog)
        {
            return;
        }
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        boolean flag = super.onPrepareOptionsMenu(menu);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPrepareOptionsMenu", new Class[] {
                android/view/Menu, Boolean.TYPE
            }), new Object[] {
                menu, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (Menu menu)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onPreparePanel(int i, View view, Menu menu)
    {
        boolean flag = super.onPreparePanel(i, view, menu);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onPreparePanel", new Class[] {
                Integer.TYPE, android/view/View, android/view/Menu, Boolean.TYPE
            }), new Object[] {
                Integer.valueOf(i), view, menu, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            return flag;
        }
        return flag1;
    }

    public void onRestart()
    {
        super.onRestart();
        try
        {
            if (sRuntimeClassesLoaded)
            {
                InvokeMethod(sAndroidActivityWrapperClass.getMethod("onRestart", new Class[0]), new Object[0]);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onRestoreInstanceState", new Class[] {
                android/os/Bundle
            }), new Object[] {
                bundle
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
        try
        {
            if (sRuntimeClassesLoaded)
            {
                InvokeMethod(sAndroidActivityWrapperClass.getMethod("onResume", new Class[0]), new Object[0]);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public Object onRetainNonConfigurationInstance()
    {
        Object obj = super.onRetainNonConfigurationInstance();
        Object obj1;
        try
        {
            obj1 = InvokeMethod(sAndroidActivityWrapperClass.getMethod("onRetainNonConfigurationInstance", new Class[] {
                java/lang/Object
            }), new Object[] {
                obj
            });
        }
        catch (Exception exception)
        {
            return obj;
        }
        return obj1;
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onSaveInstanceState", new Class[] {
                android/os/Bundle
            }), new Object[] {
                bundle
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            return;
        }
    }

    public boolean onSearchRequested()
    {
        boolean flag = super.onSearchRequested();
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onSearchRequested", new Class[] {
                Boolean.TYPE
            }), new Object[] {
                Boolean.valueOf(flag)
            })).booleanValue();
        }
        catch (Exception exception)
        {
            return flag;
        }
        return flag1;
    }

    public void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        super.onStop();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onStop", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onTitleChanged(CharSequence charsequence, int i)
    {
        super.onTitleChanged(charsequence, i);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onTitleChanged", new Class[] {
                java/lang/CharSequence, Integer.TYPE
            }), new Object[] {
                charsequence, Integer.valueOf(i)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (CharSequence charsequence)
        {
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTouchEvent(motionevent);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onTouchEvent", new Class[] {
                android/view/MotionEvent, Boolean.TYPE
            }), new Object[] {
                motionevent, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return flag;
        }
        return flag1;
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTrackballEvent(motionevent);
        boolean flag1;
        try
        {
            flag1 = ((Boolean)InvokeMethod(sAndroidActivityWrapperClass.getMethod("onTrackballEvent", new Class[] {
                android/view/MotionEvent, Boolean.TYPE
            }), new Object[] {
                motionevent, Boolean.valueOf(flag)
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return flag;
        }
        return flag1;
    }

    public void onUserInteraction()
    {
        super.onUserInteraction();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onUserInteraction", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onUserLeaveHint()
    {
        super.onUserLeaveHint();
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onUserLeaveHint", new Class[0]), new Object[0]);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onWindowAttributesChanged(android.view.WindowManager.LayoutParams layoutparams)
    {
        super.onWindowAttributesChanged(layoutparams);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onWindowAttributesChanged", new Class[] {
                android/view/WindowManager$LayoutParams
            }), new Object[] {
                layoutparams
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (android.view.WindowManager.LayoutParams layoutparams)
        {
            return;
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        try
        {
            InvokeMethod(sAndroidActivityWrapperClass.getMethod("onWindowFocusChanged", new Class[] {
                Boolean.TYPE
            }), new Object[] {
                Boolean.valueOf(flag)
            });
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }







}