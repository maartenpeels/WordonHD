.class public final Lc/m/x/a/ep/p;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static a:Lc/m/x/a/ep/p;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field private static g:Ljava/util/ArrayList;

.field private static h:Landroid/app/Activity;

.field private static i:I


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/m/x/a/ep/p;->g:Ljava/util/ArrayList;

    sput-boolean v1, Lc/m/x/a/ep/p;->e:Z

    sput v1, Lc/m/x/a/ep/p;->i:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    sput-object p0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    const/4 v0, 0x1

    sput-boolean v0, Lc/m/x/a/ep/p;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/high16 v4, 0x10000000

    const-string v8, "RESUMED_FROM_NOTIFICATION"

    const-string v7, "[PushNotifyEx]"

    const-string v6, "url"

    const-string v5, "http://"

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v0, :cond_3

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    const-string v1, "[PushNotifyEx]"

    const-string v1, "onNotificationOpened"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".AppEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[PushNotifyEx]"

    const-string v1, "error locating air core activity!"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p1}, Lc/m/x/a/ep/p;->d(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESUMED_FROM_NOTIFICATION"

    invoke-virtual {v0, v8, v1}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lc/m/x/a/ep/p;->d(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[PushNotifyEx]"

    const-string v3, "Enquing pending ->"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "RESUMED_FROM_NOTIFICATION"

    invoke-static {v8, v2}, Lc/m/x/a/ep/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 6

    const-string v5, "aTitle"

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v0, :cond_0

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    invoke-static {p0}, Lc/m/x/a/ep/p;->d(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    sget-boolean v2, Lc/m/x/a/ep/p;->e:Z

    if-nez v2, :cond_1

    const-string v0, "[PushNotifyEx]"

    const-string v2, "[background notification]"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RESUMED_FROM_NOTIFICATION"

    invoke-static {v0, v1}, Lc/m/x/a/ep/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lc/m/x/a/ep/p;->d:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.urbanairship.push.ALERT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "aTitle"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "aTitle"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lc/m/x/a/ep/s;

    invoke-direct {v4, v0, v1}, Lc/m/x/a/ep/s;-><init>(Lc/m/x/a/ep/p;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_3
    const-string v2, "FOREGROUND_NOTIFICATION"

    invoke-virtual {v0, v2, v1}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lc/m/x/a/ep/p;)V
    .locals 0

    invoke-direct {p0}, Lc/m/x/a/ep/p;->h()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lc/m/x/a/ep/p;->g:Ljava/util/ArrayList;

    new-instance v1, Lc/m/x/a/ep/ai;

    invoke-direct {v1, p0, p1}, Lc/m/x/a/ep/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static a(Z)V
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/PushPreferences;->b(Z)V

    return-void
.end method

.method public static a(JJ)Z
    .locals 5

    const-wide/16 v3, 0x3e8

    new-instance v0, Ljava/util/Date;

    mul-long v1, p0, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    mul-long v2, p2, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/push/PushPreferences;->a(Ljava/util/Date;Ljava/util/Date;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/PushManager;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/util/Set;)Z
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/push/PushManager;->a(Ljava/util/Set;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v1, :cond_0

    sget-object v1, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    iget-object v1, v1, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    iget-object v1, v1, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pnpref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lklast"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    iput-object v1, v2, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    sget-object v1, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    iget-object v1, v1, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v7, 0x0

    const-string v0, "a"

    const-string v0, "aTitle"

    const-string v0, ""

    const-string v6, "[PushNotifyEx]"

    const-string v0, "[PushNotifyEx]"

    const-string v0, "manual message callback."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lc/m/x/a/ep/p;->c(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "aTitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "aTitle"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "aTitle"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "u"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "u"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_1
    :goto_3
    :try_start_2
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    move-object v1, v3

    :cond_2
    :goto_4
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "alert"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "sound"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v5

    if-nez v5, :cond_7

    :goto_5
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_6
    const-string v5, "[PushNotifyEx]"

    const-string v5, "check state...s"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lc/m/x/a/ep/p;->e:Z

    if-eqz v5, :cond_5

    sget-object v2, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v2, :cond_4

    const-string v2, "[PushNotifyEx]"

    const-string v2, "push message instance."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[PushNotifyEx]"

    const-string v3, "fg message dispatch."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FOREGROUND_NOTIFICATION"

    invoke-virtual {v2, v3, v0}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[PushNotifyEx]"

    const-string v3, "fg msg sent."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lc/m/x/a/ep/p;->d:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lc/m/x/a/ep/q;

    invoke-direct {v5, v2, v4, v1, v0}, Lc/m/x/a/ep/q;-><init>(Lc/m/x/a/ep/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_7
    return-void

    :catch_0
    move-exception v2

    const-string v2, "[PushNotifyEx]"

    const-string v2, "Message title not available (extras)."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v2, v7

    :goto_8
    const-string v3, "[PushNotifyEx]"

    const-string v3, "Message title not available (custom)."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v3, v0

    :goto_9
    move-object v4, v3

    move-object v3, v7

    goto :goto_6

    :cond_4
    const-string v0, "[PushNotifyEx]"

    const-string v0, "fg, instance freed."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    const-string v5, "[PushNotifyEx]"

    const-string v5, "enq message instance."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "RESUMED_FROM_NOTIFICATION"

    invoke-static {v5, v0}, Lc/m/x/a/ep/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lc/m/x/a/ep/o;->a()Lc/m/x/a/ep/o;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4, v3, v2}, Lc/m/x/a/ep/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v0, "[PushNotifyEx]"

    const-string v0, "Notification data was not valid."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    sget v2, Lc/m/x/a/ep/p;->i:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lc/m/x/a/ep/p;->i:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_7

    :catch_3
    move-exception v4

    goto :goto_9

    :catch_4
    move-exception v3

    goto :goto_8

    :cond_7
    move-object v4, v7

    goto/16 :goto_5

    :cond_8
    move-object v2, v7

    goto/16 :goto_3

    :cond_9
    move-object v2, v7

    goto/16 :goto_2

    :cond_a
    move-object v3, v7

    goto/16 :goto_1
.end method

.method public static b(Landroid/content/Intent;)V
    .locals 5

    const-string v4, "[PushNotifyEx]"

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v0, :cond_0

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    const-string v1, "com.urbanairship.push.APID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.urbanairship.push.REGISTRATION_VALID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "TOKEN_REGISTERED"

    invoke-virtual {v0, v2, v1}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[PushNotifyEx]"

    const-string v0, "will get prefs"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    const-string v1, "[PushNotifyEx]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIRSHIP->App APID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "TOKEN_REG_FAILED"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-1[ERR]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "com.urbanairship.push.REGISTRATION_ERROR"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v0, :cond_0

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    const-string v1, "TOKEN_REG_FAILED"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-1[ERR]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/m/x/a/ep/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[PushNotifyEx]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatch on main:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lc/m/x/a/ep/p;->h:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lc/m/x/a/ep/p;->h:Landroid/app/Activity;

    new-instance v1, Lc/m/x/a/ep/u;

    invoke-direct {v1, p0, p1, p2}, Lc/m/x/a/ep/u;-><init>(Lc/m/x/a/ep/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static b(Z)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/push/PushManager;->d()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 6

    const-string v5, "[PushNotifyEx]"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "[PushNotifyEx]"

    const-string v4, "Failed posting extra to callback"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "extras"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "[PushNotifyEx]"

    const-string v2, "Failed posting extras obj to callback"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const-string v2, "[PushNotifyEx]"

    const-string v0, "[PushNotifyEx]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onmanual reg callback instance "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-eqz v0, :cond_0

    const-string v0, "[PushNotifyEx]"

    const-string v0, "push thread--"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    const-string v1, "TOKEN_REGISTERED"

    invoke-direct {v0, v1, p0}, Lc/m/x/a/ep/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[PushNotifyEx]"

    const-string v0, "thread pushed."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static d(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 7

    const-string v6, "[PushNotifyEx]"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "alert"

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.urbanairship.push.ALERT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "[PushNotifyEx]"

    const-string v5, "Failed posting extra to callback"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "[PushNotifyEx]"

    const-string v4, "Failed posting alert to callback"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v0, "extras"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v0, "android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-object v1

    :catch_2
    move-exception v0

    const-string v3, "[PushNotifyEx]"

    const-string v3, "Failed posting extras obj to callback"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v2, "[PushNotifyEx]"

    const-string v2, "Failed posting android obj to callback"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static g()Lc/m/x/a/ep/p;
    .locals 2

    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    if-nez v0, :cond_0

    new-instance v0, Lc/m/x/a/ep/p;

    invoke-direct {v0}, Lc/m/x/a/ep/p;-><init>()V

    sput-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    :goto_0
    sget-object v0, Lc/m/x/a/ep/p;->a:Lc/m/x/a/ep/p;

    return-object v0

    :cond_0
    const-string v0, "[PushNotifyEx]"

    const-string v1, "Context already created!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 4

    const-string v3, "[PushNotifyEx]"

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "[PushNotifyEx]"

    const-string v0, "No current token, starting registration..."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lc/m/x/a/ep/p;->j()V

    return-void

    :cond_0
    const-string v1, "[PushNotifyEx]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has token already:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[PushNotifyEx]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Token already registered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TOKEN_ALREADY_REGISTERED"

    invoke-virtual {p0, v1, v0}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "TOKEN_REGISTERED"

    invoke-virtual {p0, v1, v0}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    new-instance v0, Lc/m/x/a/ep/aj;

    invoke-direct {v0, p0}, Lc/m/x/a/ep/aj;-><init>(Lcom/adobe/fre/FREContext;)V

    new-instance v1, Lc/m/x/a/ep/t;

    invoke-direct {v1, p0}, Lc/m/x/a/ep/t;-><init>(Lc/m/x/a/ep/p;)V

    invoke-virtual {v0, v1}, Lc/m/x/a/ep/aj;->a(Lc/m/x/a/ep/am;)V

    return-void
.end method

.method private j()V
    .locals 5

    const-string v4, "[PushNotifyEx]"

    const-string v0, "[PushNotifyEx]"

    const-string v0, "Dq."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lc/m/x/a/ep/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/ep/ai;

    iget-object v3, v0, Lc/m/x/a/ep/ai;->a:Ljava/lang/String;

    iget-object v0, v0, Lc/m/x/a/ep/ai;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "[PushNotifyEx]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Count DQ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lc/m/x/a/ep/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-direct {p0}, Lc/m/x/a/ep/p;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, "[PushNotifyEx]"

    invoke-direct {p0}, Lc/m/x/a/ep/p;->i()V

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pnpref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ask"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ass"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "asd"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "asa"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "asb"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "asc"

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "[PushNotifyEx]"

    const-string v0, "Changes applied."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lc/m/x/a/ep/p;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "[PushNotifyEx]"

    const-string v0, "Airship->Already initialized!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sput-boolean v4, Lc/m/x/a/ep/p;->b:Z

    sput-boolean p5, Lc/m/x/a/ep/p;->d:Z

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lc/m/x/a/ep/p;->h:Landroid/app/Activity;

    const-string v0, "[PushNotifyEx]"

    const-string v0, "InitAirship->"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/AirshipConfigOptions;->a(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    if-eqz p3, :cond_2

    iput-object p1, v0, Lcom/urbanairship/AirshipConfigOptions;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/urbanairship/AirshipConfigOptions;->d:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    :goto_1
    const-string v1, "gcm"

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->i:Ljava/lang/String;

    iput-object p6, v0, Lcom/urbanairship/AirshipConfigOptions;->h:Ljava/lang/String;

    const/16 v1, 0xe

    iput v1, v0, Lcom/urbanairship/AirshipConfigOptions;->q:I

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->b(Landroid/app/Application;)V

    if-eqz p7, :cond_1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->c()V

    :cond_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    const-string v1, "[PushNotifyEx]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AIRSHIP->App APID--: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lc/m/x/a/ep/p;->j()V

    move v0, v4

    goto :goto_0

    :cond_2
    iput-object p1, v0, Lcom/urbanairship/AirshipConfigOptions;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/urbanairship/AirshipConfigOptions;->b:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;ZZ)Z
    .locals 3

    invoke-direct {p0}, Lc/m/x/a/ep/p;->i()V

    iput-object p1, p0, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    sput-boolean p2, Lc/m/x/a/ep/p;->d:Z

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lc/m/x/a/ep/p;->h:Landroid/app/Activity;

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pnpref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lklast"

    iget-object v2, p0, Lc/m/x/a/ep/p;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lc/m/x/a/ep/p;->h()V

    :cond_0
    invoke-direct {p0}, Lc/m/x/a/ep/p;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    const-string v0, "[PushNotifyEx]"

    const-string v1, "activation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mmg://easypush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/m/x/a/ep/p;->j()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "[PushNotifyEx]"

    :try_start_0
    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "[PushNotifyEx]"

    const-string v0, "Notifications not supported on this device."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "[PushNotifyEx]"

    const-string v0, "Manifest is not properly configured."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->c(Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFunctions()Ljava/util/Map;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ffiInitAirship"

    new-instance v2, Lc/m/x/a/ep/ab;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/ab;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetAirshipQuietTime"

    new-instance v2, Lc/m/x/a/ep/af;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/af;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiUpdateAirshipAlias"

    new-instance v2, Lc/m/x/a/ep/ah;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/ah;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetAirshipTags"

    new-instance v2, Lc/m/x/a/ep/ag;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/ag;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiAreNotificationsAvailable"

    new-instance v2, Lc/m/x/a/ep/z;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/z;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiDispatchAndClearPending"

    new-instance v2, Lc/m/x/a/ep/aa;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/aa;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsAirshipAvailable"

    new-instance v2, Lc/m/x/a/ep/ad;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/ad;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiOnActivate"

    new-instance v2, Lc/m/x/a/ep/ae;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/ae;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiInitManual"

    new-instance v2, Lc/m/x/a/ep/ac;

    invoke-direct {v2, p0, v3}, Lc/m/x/a/ep/ac;-><init>(Lc/m/x/a/ep/p;B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiManualUnregisterToken"

    new-instance v2, Lc/m/x/a/ep/v;

    invoke-direct {v2, p0}, Lc/m/x/a/ep/v;-><init>(Lc/m/x/a/ep/p;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetAirshipPushEnabled"

    new-instance v2, Lc/m/x/a/ep/w;

    invoke-direct {v2, p0}, Lc/m/x/a/ep/w;-><init>(Lc/m/x/a/ep/p;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetAirshipSoundEnabled"

    new-instance v2, Lc/m/x/a/ep/x;

    invoke-direct {v2, p0}, Lc/m/x/a/ep/x;-><init>(Lc/m/x/a/ep/p;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiRegisterForNotifications"

    new-instance v2, Lc/m/x/a/ep/y;

    invoke-direct {v2, p0}, Lc/m/x/a/ep/y;-><init>(Lc/m/x/a/ep/p;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
