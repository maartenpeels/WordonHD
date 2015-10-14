.class public final Lcom/milkmangames/extensions/android/coremobile/b;
.super Lcom/adobe/fre/FREContext;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/milkmangames/extensions/android/coremobile/z;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/app/Activity;

.field private static f:Lcom/milkmangames/extensions/android/coremobile/b;


# instance fields
.field private g:Landroid/content/BroadcastReceiver;

.field private h:Z

.field private i:Z

.field private j:Landroid/hardware/Sensor;

.field private k:Landroid/hardware/Sensor;

.field private l:Landroid/hardware/Sensor;

.field private m:Landroid/hardware/SensorManager;

.field private n:[F

.field private o:[F

.field private p:[F

.field private q:[F

.field private r:[F

.field private s:[F

.field private t:[F

.field private u:[F

.field private v:F

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "[CoreMobileEx]"

    sput-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    sput-boolean v1, Lcom/milkmangames/extensions/android/coremobile/b;->b:Z

    sput-boolean v1, Lcom/milkmangames/extensions/android/coremobile/b;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->n:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->r:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->s:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->t:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->u:[F

    iput-boolean v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->w:Z

    sput-boolean v2, Lcom/milkmangames/extensions/android/coremobile/b;->c:Z

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "set fg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/milkmangames/extensions/android/coremobile/b;->f:Lcom/milkmangames/extensions/android/coremobile/b;

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 7

    const-string v6, "Failed parsing extras"

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

    sget-object v4, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v5, "Failed parsing extras"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    sget-object v2, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v3, "Failed parsing extras"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/milkmangames/extensions/android/CMLocalNotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Canceled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 27

    const-string v9, "cmexlnlist"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "intlist"

    const-string v11, "[]"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v24, v10

    :goto_0
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v25

    const/4 v9, 0x0

    move/from16 v26, v9

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    const/4 v9, 0x0

    :try_start_1
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v12, v9

    :goto_2
    if-eqz v12, :cond_0

    :try_start_2
    const-string v9, "code"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "timeSeconds"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v13, "title"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v13, "message"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "extraData"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v13, "thenEverySeconds"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "thenEverySeconds"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-wide v4, v12

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Context;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_3
    add-int/lit8 v9, v26, 0x1

    move/from16 v26, v9

    goto :goto_1

    :catch_0
    move-exception v9

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v24, v10

    goto :goto_0

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    move-object v12, v9

    goto :goto_2

    :cond_1
    move-object/from16 v17, p0

    move/from16 v18, v9

    move-wide/from16 v19, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    :try_start_3
    invoke-static/range {v17 .. v23}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    sget-object v9, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v10, "Could not parse a pending boot intent."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 12

    const/4 v6, 0x0

    const/4 v8, -0x1

    const-string v10, "lnlist"

    const-string v9, "intlist"

    const-string v7, "[]"

    const-string v0, "cmexlnlist"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lnlist"

    const-string v1, "[]"

    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v6

    :goto_1
    if-ge v4, v3, :cond_1

    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :goto_2
    if-eq v5, p1, :cond_0

    if-eq v5, v8, :cond_0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    move v5, v8

    goto :goto_2

    :cond_1
    const-string v1, "intlist"

    const-string v1, "[]"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v3

    :goto_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v6

    :goto_4
    if-ge v5, v4, :cond_3

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    if-eqz v6, :cond_4

    :try_start_4
    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    :goto_5
    move v11, v7

    move-object v7, v6

    move v6, v11

    :goto_6
    if-eq p1, v8, :cond_2

    if-eq v6, p1, :cond_2

    if-eq v6, v8, :cond_2

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_2
    move-exception v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    move v6, v8

    goto :goto_6

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lnlist"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "intlist"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_4
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    goto :goto_7

    :cond_4
    move v7, v8

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/milkmangames/extensions/android/CMLocalNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extraData"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "thenEverySeconds"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "cmexlnlist"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "intlist"

    const-string v1, "[]"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lnlist"

    const-string v2, "[]"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v3, "message"

    invoke-virtual {v2, v3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p7, "title"

    invoke-virtual {v2, p7, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "extraData"

    invoke-virtual {v2, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "code"

    invoke-virtual {v2, p6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p6, "timeSeconds"

    invoke-virtual {v2, p6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "thenEverySeconds"

    invoke-virtual {v2, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "lnlist"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "intlist"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception p2

    sget-object p3, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string p4, "Failed setting intent mem."

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    const-string v8, "lnlist"

    const-string v7, "intlist"

    const-string v2, "extraData"

    const-string v5, "[]"

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/milkmangames/extensions/android/CMLocalNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extraData"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "cmexlnlist"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "intlist"

    const-string v1, "[]"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lnlist"

    const-string v2, "[]"

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v4, "message"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "title"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "extraData"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "code"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "timeSeconds"

    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lnlist"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "intlist"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception v4

    sget-object v5, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v6, "Failed setting intent mem."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/16 v12, 0x3e8

    const/4 v11, 0x0

    const/4 v10, -0x1

    const-string v3, "requestCode"

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "onm."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "requestCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "requestCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "thenEverySeconds"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Context;I)V

    :cond_0
    sget-boolean v0, Lcom/milkmangames/extensions/android/coremobile/b;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v2, "fg"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->f:Lcom/milkmangames/extensions/android/coremobile/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->f:Lcom/milkmangames/extensions/android/coremobile/b;

    const-string v2, "LOCAL_NOTIFICATION_RECEIVED"

    invoke-direct {v0, v2, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v2, "bg"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    new-instance v7, Landroid/app/Notification;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v4, v5, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1f

    iput v4, v7, Landroid/app/Notification;->flags:I

    iget v4, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v7, Landroid/app/Notification;->flags:I

    iget v4, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v7, Landroid/app/Notification;->flags:I

    iget v4, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x3

    iput v4, v7, Landroid/app/Notification;->defaults:I

    iput v12, v7, Landroid/app/Notification;->ledOnMS:I

    iput v12, v7, Landroid/app/Notification;->ledOffMS:I

    iput v10, v7, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "cmLocal"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-static {p0, v11, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, p0, v6, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v2, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v7, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v11, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "LOCAL_NOTIFICATION_SELECTED"

    sget-object v2, Lcom/milkmangames/extensions/android/coremobile/b;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/milkmangames/extensions/android/coremobile/z;

    invoke-direct {v3, v0, v1}, Lcom/milkmangames/extensions/android/coremobile/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v7

    sget-object v8, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v9, "Message parse failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v2, "Failed to locate the air main intent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    move v0, v10

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;D)V
    .locals 6

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "No Vibrator available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-double v0, p1, v4

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;I)V
    .locals 2

    const v0, 0x1da8c4

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(I)V

    sget-object v1, Lcom/milkmangames/extensions/android/coremobile/b;->e:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const v0, 0x1da8c4

    add-int v1, v0, p1

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Context;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const v0, 0x1da8c4

    add-int v1, v0, p1

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, p7

    move v1, v9

    if-ne v0, v1, :cond_8

    const-string v5, "layout.inputalert"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->getResourceId(Ljava/lang/String;)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    :cond_0
    :goto_0
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_b

    invoke-virtual {v15, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v4, "id.userInput"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->getResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v6, 0x1

    move/from16 v0, p7

    move v1, v6

    if-ne v0, v1, :cond_9

    invoke-static/range {p3 .. p3}, Lcom/milkmangames/extensions/android/coremobile/b;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p3, 0x6

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 p3, v4

    move-object v5, v7

    :goto_1
    if-nez p9, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    :cond_2
    const/4 v6, 0x1

    move/from16 v0, p9

    move v1, v6

    if-ne v0, v1, :cond_3

    const/16 v6, 0x21

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    :cond_3
    const/4 v6, 0x2

    move/from16 v0, p9

    move v1, v6

    if-ne v0, v1, :cond_4

    const/16 p9, 0x2

    move-object v0, v4

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_4
    move-object v14, v5

    move-object v13, v4

    :goto_2
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/milkmangames/extensions/android/coremobile/y;

    move-object/from16 v5, p0

    move/from16 v6, p7

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p8

    move/from16 v12, p6

    invoke-direct/range {v4 .. v14}, Lcom/milkmangames/extensions/android/coremobile/y;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v5, Lcom/milkmangames/extensions/android/coremobile/n;

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p6

    move-object/from16 v12, p8

    invoke-direct/range {v5 .. v12}, Lcom/milkmangames/extensions/android/coremobile/n;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    new-instance p1, Lcom/milkmangames/extensions/android/coremobile/r;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/milkmangames/extensions/android/coremobile/r;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;Lcom/milkmangames/extensions/android/coremobile/y;)V

    invoke-virtual {v15, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static/range {p5 .. p5}, Lcom/milkmangames/extensions/android/coremobile/b;->d(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    move-object v0, v15

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz v13, :cond_6

    new-instance p2, Lcom/milkmangames/extensions/android/coremobile/s;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/milkmangames/extensions/android/coremobile/s;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;Landroid/app/AlertDialog;)V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_6
    new-instance p2, Lcom/milkmangames/extensions/android/coremobile/t;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/t;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual/range {p1 .. p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p3, :cond_7

    new-instance p2, Lcom/milkmangames/extensions/android/coremobile/u;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/milkmangames/extensions/android/coremobile/u;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;Lcom/milkmangames/extensions/android/coremobile/y;Landroid/app/AlertDialog;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_8
    const/4 v9, 0x2

    move/from16 v0, p7

    move v1, v9

    if-ne v0, v1, :cond_0

    const-string v5, "layout.credalert"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->getResourceId(Ljava/lang/String;)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_0

    :cond_9
    const/16 p3, 0x2

    move/from16 v0, p7

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    const-string p3, "id.passInput"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->getResourceId(Ljava/lang/String;)I

    move-result p3

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const-string v5, "Login"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v5, "Password"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 v5, 0x6

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v5, p3

    goto/16 :goto_1

    :cond_a
    move-object/from16 p3, v8

    move-object v5, v7

    goto/16 :goto_1

    :cond_b
    move-object/from16 p3, v8

    move-object v14, v7

    move-object v13, v6

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/milkmangames/extensions/android/coremobile/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/milkmangames/extensions/android/coremobile/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->h:Z

    return p1
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/milkmangames/extensions/android/coremobile/b;->c:Z

    return p0
.end method

.method private static a([F[F)[F
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [F

    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v6

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v7

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, p0, v5

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p0, v6

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v7

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v5

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p0, v6

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v7

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v8

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v8

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v9

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    const/4 v1, 0x5

    aget v2, p0, v8

    aget v3, p1, v7

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    aget v4, p1, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    aget v4, p1, v9

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Begin sensor registration..."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->j:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->k:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->l:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "Sensors registered."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/milkmangames/extensions/android/coremobile/b;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->h:Z

    if-eqz p1, :cond_1

    new-instance v0, Lcom/milkmangames/extensions/android/coremobile/c;

    invoke-direct {v0, p0}, Lcom/milkmangames/extensions/android/coremobile/c;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->g:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->g:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lcom/milkmangames/extensions/android/coremobile/b;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/milkmangames/extensions/android/coremobile/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->h:Z

    return v0
.end method

.method private c()V
    .locals 2

    const-string v0, "Begin sensor unregistration..."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->j:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->k:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->l:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const-string v0, "Sensors unregistered."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/milkmangames/extensions/android/coremobile/b;Z)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v0, "Init Gyro Sensors."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->f()Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/milkmangames/extensions/android/coremobile/b;->i:Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    aput v5, v2, v9

    aput v5, v1, v7

    aput v5, v0, v6

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    const/4 v4, 0x3

    aput v5, v3, v4

    aput v5, v2, v9

    aput v5, v1, v7

    aput v5, v0, v6

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    aput v8, v0, v6

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    aput v5, v0, v7

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    aput v5, v0, v9

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x3

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x4

    aput v8, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x5

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x6

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/16 v1, 0x8

    aput v8, v0, v1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->b()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Gyro could not initialize; sensors unavailable."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iput-boolean v6, p0, Lcom/milkmangames/extensions/android/coremobile/b;->i:Z

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->c()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->k:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->l:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->j:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_2
    const-string v0, "Gyro not unregistered - sensors unavailable."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/milkmangames/extensions/android/coremobile/b;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[V]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/milkmangames/extensions/android/coremobile/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->i:Z

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    const-string v5, "{}"

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->j:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string v0, "{}"

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "roll"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "pitch"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "yaw"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    neg-float v3, v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "qw"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "qx"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "qy"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "qz"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "attitude"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Failed parsing attitude."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "{}"

    move-object v0, v5

    goto :goto_0
.end method

.method static synthetic d(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->c()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->b()V

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "init cm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->e:Landroid/app/Activity;

    new-instance v0, Lc/m/x/a/cm/a;

    invoke-direct {v0, p0}, Lc/m/x/a/cm/a;-><init>(Lcom/adobe/fre/FREContext;)V

    new-instance v1, Lcom/milkmangames/extensions/android/coremobile/v;

    invoke-direct {v1, p0}, Lcom/milkmangames/extensions/android/coremobile/v;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1}, Lc/m/x/a/cm/a;->a(Lc/m/x/a/cm/d;)V

    iput-boolean v6, p0, Lcom/milkmangames/extensions/android/coremobile/b;->i:Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    aput v5, v2, v9

    aput v5, v1, v8

    aput v5, v0, v6

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    const/4 v4, 0x3

    aput v5, v3, v4

    aput v5, v2, v9

    aput v5, v1, v8

    aput v5, v0, v6

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    aput v7, v0, v6

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    aput v5, v0, v8

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    aput v5, v0, v9

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x3

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x4

    aput v7, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x5

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x6

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/16 v1, 0x8

    aput v7, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gyro orientation initialized: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], quat: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], matrix: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "dispatch queue."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->a()V

    return-void
.end method

.method private f()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->j:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->k:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->m:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->l:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->j:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->k:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->l:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic g(Lcom/milkmangames/extensions/android/coremobile/b;)I
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/milkmangames/extensions/android/coremobile/b;)Z
    .locals 3

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->f()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Did init gyro successfully? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic i(Lcom/milkmangames/extensions/android/coremobile/b;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, -0x1

    const-string v7, "lnlist"

    const-string v5, "[]"

    invoke-virtual {p0}, Lcom/milkmangames/extensions/android/coremobile/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cmexlnlist"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lnlist"

    const-string v1, "[]"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_2
    if-eq v4, v6, :cond_0

    invoke-direct {p0, v4}, Lcom/milkmangames/extensions/android/coremobile/b;->a(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    move v4, v6

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lnlist"

    const-string v1, "[]"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "intlist"

    const-string v2, "[]"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/milkmangames/extensions/android/coremobile/z;

    iget-object v2, v0, Lcom/milkmangames/extensions/android/coremobile/z;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/milkmangames/extensions/android/coremobile/z;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method

.method public final getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ffiInitCoreMobile"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/w;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/w;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiVibrate"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/d;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/d;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsNetworkReachable"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/e;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/e;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetReachabilityListenerEnabled"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/f;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/f;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiGetNetworkType"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/g;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/g;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiIsDeviceMotionAvailable"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/h;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/h;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetDeviceMotionEnabled"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/i;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/i;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiGetDeviceMotionData"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/j;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/j;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiShowModalDialog"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/k;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/k;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiScheduleLocalNotification"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/l;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/l;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiScheduleRepeatingLocalNotification"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/m;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/m;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiCancelLocalNotification"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/o;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/o;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiCancelAllLocalNotifications"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/p;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/p;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffiSetVerboseLogEnabled"

    new-instance v2, Lcom/milkmangames/extensions/android/coremobile/q;

    invoke-direct {v2, p0}, Lcom/milkmangames/extensions/android/coremobile/q;-><init>(Lcom/milkmangames/extensions/android/coremobile/b;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sensor accuracy has changed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "Sensor updated: Accelerometer."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->s:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->u:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->s:[F

    iget-object v3, p0, Lcom/milkmangames/extensions/android/coremobile/b;->r:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->u:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->t:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto :goto_0

    :pswitch_2
    const-string v0, "Sesnsor updated: gyroscope."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    const-string v0, "Normalizing gyro data..."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->t:[F

    if-nez v0, :cond_1

    const-string v0, "Normalization canceled: mag orientation not yet available."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->w:Z

    if-eqz v0, :cond_2

    const-string v0, "Setting inital state for gyroscope rotation matrices."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->t:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    const/16 v2, 0x9

    new-array v2, v2, [F

    const/16 v3, 0x9

    new-array v3, v3, [F

    const/4 v4, 0x1

    aget v4, v0, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x2

    aget v6, v0, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x2

    aget v7, v0, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    aget v0, v0, v9

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v0, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x4

    aput v5, v1, v9

    const/4 v9, 0x5

    aput v4, v1, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x7

    neg-float v4, v4

    aput v4, v1, v9

    const/16 v4, 0x8

    aput v5, v1, v4

    const/4 v4, 0x0

    aput v7, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    const/4 v4, 0x2

    aput v6, v2, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v2, v4

    const/4 v4, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v2, v4

    const/4 v4, 0x6

    neg-float v5, v6

    aput v5, v2, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput v5, v2, v4

    const/16 v4, 0x8

    aput v7, v2, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v8, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x3

    neg-float v5, v8

    aput v5, v3, v4

    const/4 v4, 0x4

    aput v0, v3, v4

    const/4 v0, 0x5

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v0, 0x6

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v0, 0x7

    const/4 v4, 0x0

    aput v4, v3, v0

    const/16 v0, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {v1, v2}, Lcom/milkmangames/extensions/android/coremobile/b;->a([F[F)[F

    move-result-object v0

    invoke-static {v3, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a([F[F)[F

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    invoke-static {v1, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->w:Z

    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->v:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v1

    iget v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->v:F

    sub-float/2addr v1, v2

    const v2, 0x3089705f    # 1.0E-9f

    mul-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/b;->n:[F

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "Calculating gyro data to rotation vector..."

    invoke-static {v2}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->n:[F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    aget v5, v2, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3089705f    # 1.0E-9f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    div-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v2, v6

    div-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v2, v2, v6

    div-float/2addr v2, v4

    aput v2, v3, v5

    :cond_3
    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v3, v5

    mul-float/2addr v5, v2

    aput v5, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v3, v5

    mul-float/2addr v5, v2

    aput v5, v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v3, v3, v5

    mul-float/2addr v2, v3

    aput v2, v0, v4

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "The rotation data vector has been updated."

    invoke-static {v1}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    :cond_4
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v1

    iput v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->v:F

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const-string v0, "Rotation vector converted to matrix."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    invoke-static {v0, v1}, Lcom/milkmangames/extensions/android/coremobile/b;->a([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->p:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const-string v0, "Checking for Samsung Quat bug..."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking gyroQuat["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], gyromatrix["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    const-string v0, "Updated quaternion reading."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Samsung matrix length exception, recalculating vector..."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const-string v0, "Resetting to vector length 3..."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->o:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculate quat with new vector gyroQuat["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], newVector["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/b;->q:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Sensor upadted: magnetic"

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/b;->r:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
