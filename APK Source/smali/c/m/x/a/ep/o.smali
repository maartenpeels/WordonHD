.class public final Lc/m/x/a/ep/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/push/PushNotificationBuilder;


# static fields
.field private static b:Lc/m/x/a/ep/o;


# instance fields
.field public a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/m/x/a/ep/o;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v5, "[PushNotifyEx]"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    const-string v2, "com.milkmangames.resource.R$drawable"

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    const-string v1, "ic_stat_notification"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :cond_0
    :goto_1
    new-instance v2, Lc/m/x/a/ep/e;

    invoke-direct {v2, p0}, Lc/m/x/a/ep/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lc/m/x/a/ep/e;->a(I)Lc/m/x/a/ep/e;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc/m/x/a/ep/e;->a(Landroid/graphics/Bitmap;)Lc/m/x/a/ep/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/m/x/a/ep/e;->c()Lc/m/x/a/ep/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/m/x/a/ep/e;->a(Ljava/lang/CharSequence;)Lc/m/x/a/ep/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc/m/x/a/ep/e;->c(Ljava/lang/CharSequence;)Lc/m/x/a/ep/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc/m/x/a/ep/e;->b(Ljava/lang/CharSequence;)Lc/m/x/a/ep/e;

    move-result-object v0

    new-instance v1, Lc/m/x/a/ep/d;

    invoke-direct {v1}, Lc/m/x/a/ep/d;-><init>()V

    invoke-virtual {v1, p2}, Lc/m/x/a/ep/d;->b(Ljava/lang/CharSequence;)Lc/m/x/a/ep/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc/m/x/a/ep/d;->a(Ljava/lang/CharSequence;)Lc/m/x/a/ep/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/m/x/a/ep/e;->a(Lc/m/x/a/ep/l;)Lc/m/x/a/ep/e;

    const/4 v0, 0x7

    if-eqz p3, :cond_1

    new-instance v0, Lc/m/x/a/ep/n;

    invoke-direct {v0, p0}, Lc/m/x/a/ep/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lc/m/x/a/ep/n;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x6

    :try_start_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    :cond_1
    :goto_2
    invoke-virtual {v2, v0}, Lc/m/x/a/ep/e;->b(I)Lc/m/x/a/ep/e;

    invoke-virtual {v2}, Lc/m/x/a/ep/e;->b()Lc/m/x/a/ep/e;

    invoke-virtual {v2}, Lc/m/x/a/ep/e;->a()Lc/m/x/a/ep/e;

    invoke-virtual {v2}, Lc/m/x/a/ep/e;->c()Lc/m/x/a/ep/e;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_2

    :try_start_3
    new-instance v4, Landroid/content/Intent;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v4, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".EPLAUNCH"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mmg://easypush"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/high16 v1, 0x24000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v1, v4

    :goto_3
    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lc/m/x/a/ep/e;->a(Landroid/app/PendingIntent;)Lc/m/x/a/ep/e;

    invoke-virtual {v2}, Lc/m/x/a/ep/e;->d()Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1e

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    move-object v0, v1

    :goto_4
    return-object v0

    :catch_0
    move-exception v2

    const-string v2, "[PushNotifyEx]"

    const-string v2, "No embedded icon res."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    const-string v3, "[PushNotifyEx]"

    const-string v3, "Notify status icon resource not valid."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v0, "[PushNotifyEx]"

    const-string v0, "invalid sound file"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "[PushNotifyEx]"

    const-string v1, "Failed to locate the air main intent."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_4

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static a()Lc/m/x/a/ep/o;
    .locals 1

    sget-object v0, Lc/m/x/a/ep/o;->b:Lc/m/x/a/ep/o;

    if-nez v0, :cond_0

    new-instance v0, Lc/m/x/a/ep/o;

    invoke-direct {v0}, Lc/m/x/a/ep/o;-><init>()V

    sput-object v0, Lc/m/x/a/ep/o;->b:Lc/m/x/a/ep/o;

    :cond_0
    sget-object v0, Lc/m/x/a/ep/o;->b:Lc/m/x/a/ep/o;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;
    .locals 8

    const/4 v4, 0x0

    const-string v7, "url"

    const-string v3, "sound"

    const-string v6, "http://"

    const-string v5, "aTitle"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    sget-boolean v0, Lc/m/x/a/ep/p;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "[PushNotifyEx]"

    const-string v1, "UA notified in foreground; no notification view created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/urbanairship/UAirship;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    const-string v2, "sound"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->g()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "sound"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    :goto_1
    const-string v3, "aTitle"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "aTitle"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :cond_3
    const-string v3, "url"

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "url"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, p1, v2, v3}, Lc/m/x/a/ep/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->g()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    :cond_4
    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->g()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    :cond_5
    iput v2, v0, Landroid/app/Notification;->defaults:I

    goto/16 :goto_0

    :cond_6
    move-object v3, p0

    goto :goto_2

    :cond_7
    move-object v3, v4

    goto :goto_2

    :cond_8
    move-object v2, v4

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lc/m/x/a/ep/o;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lc/m/x/a/ep/o;->a:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->a()I

    move-result v0

    goto :goto_0
.end method
