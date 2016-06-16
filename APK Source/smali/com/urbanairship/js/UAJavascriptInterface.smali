.class public Lcom/urbanairship/js/UAJavascriptInterface;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/urbanairship/richpush/RichPushMessage;

.field private final b:Lcom/urbanairship/actions/ActionRunner;

.field private final c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-static {}, Lcom/urbanairship/actions/ActionRunner;->a()Lcom/urbanairship/actions/ActionRunner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/js/UAJavascriptInterface;-><init>(Landroid/webkit/WebView;Lcom/urbanairship/actions/ActionRunner;)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;Lcom/urbanairship/actions/ActionRunner;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/js/UAJavascriptInterface;->c:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/urbanairship/js/UAJavascriptInterface;->b:Lcom/urbanairship/actions/ActionRunner;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface;->a:Lcom/urbanairship/richpush/RichPushMessage;

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/js/UAJavascriptInterface;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/urbanairship/actions/ActionResult;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/urbanairship/js/UAJavascriptInterface$4;->a:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionResult;->d()Lcom/urbanairship/actions/ActionResult$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionResult$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Action %s not found"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "Action %s rejected its arguments"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionResult;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionResult;->c()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Action %s failed with unspecified error"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/urbanairship/js/UAJavascriptInterface;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "null"

    const-string v1, "\'%s\'"

    const-string v0, "\'%s\'"

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p3, v0, v6

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "null"

    move-object v1, v8

    :goto_0
    const-string v2, "null"

    if-eqz p2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "\'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    const-string v3, "javascript:UAirship.finishAction(%s, %s, %s);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/js/UAJavascriptInterface;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/urbanairship/js/UAJavascriptInterface$3;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/js/UAJavascriptInterface$3;-><init>(Lcom/urbanairship/js/UAJavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v1, "new Error(\'%s\')"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "Unable to encode JS result value"

    invoke-static {v2}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :cond_1
    move-object v2, v8

    goto :goto_1
.end method
