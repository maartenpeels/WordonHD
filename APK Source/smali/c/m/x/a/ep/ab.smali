.class final Lc/m/x/a/ep/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field final synthetic a:Lc/m/x/a/ep/p;


# direct methods
.method private constructor <init>(Lc/m/x/a/ep/p;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/ab;->a:Lc/m/x/a/ep/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/m/x/a/ep/p;B)V
    .locals 0

    invoke-direct {p0, p1}, Lc/m/x/a/ep/ab;-><init>(Lc/m/x/a/ep/p;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "[PushNotifyEx]"

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_1
    const/4 v0, 0x2

    :try_start_2
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v3, v0

    :goto_2
    const/4 v0, 0x4

    :try_start_3
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    move-object v4, v0

    :goto_3
    const/4 v0, 0x5

    :try_start_4
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    move v5, v0

    :goto_4
    const/4 v0, 0x6

    :try_start_5
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    move-object v6, v0

    :goto_5
    const/4 v0, 0x7

    :try_start_6
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    move v7, v0

    :goto_6
    iget-object v0, p0, Lc/m/x/a/ep/ab;->a:Lc/m/x/a/ep/p;

    invoke-virtual/range {v0 .. v7}, Lc/m/x/a/ep/p;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)Z

    move-result v0

    :try_start_7
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v0

    :goto_7
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[PushNotifyEx]"

    const-string v1, "asKey"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "[PushNotifyEx]"

    const-string v2, "asCode"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v8

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "[PushNotifyEx]"

    const-string v3, "devBuild"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v9

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v4, "[PushNotifyEx]"

    const-string v4, "alias"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v8

    goto :goto_3

    :catch_4
    move-exception v0

    const-string v5, "[PushNotifyEx]"

    const-string v5, "alert"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v9

    goto :goto_4

    :catch_5
    move-exception v0

    const-string v6, "[PushNotifyEx]"

    const-string v6, "sender"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v8

    goto :goto_5

    :catch_6
    move-exception v0

    move v7, v9

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v0, v8

    goto :goto_7
.end method
