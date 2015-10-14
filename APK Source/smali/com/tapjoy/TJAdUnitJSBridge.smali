.class public Lcom/tapjoy/TJAdUnitJSBridge;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TJAdUnitJSBridge"


# instance fields
.field public allowRedirect:Z

.field private bannerView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field public customClose:Z

.field public didLaunchOtherActivity:Z

.field private enabled:Z

.field private eventData:Lcom/tapjoy/TJEventData;

.field private jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field public otherActivityCallbackID:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private self:Lcom/tapjoy/TJAdUnitJSBridge;

.field public shouldClose:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/tapjoy/TJEventData;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkit/WebView;
    .param p3, "e"    # Lcom/tapjoy/TJEventData;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    const-string v2, "TJAdUnitJSBridge"

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;

    .line 66
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 67
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 68
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 70
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 83
    const-string v0, "TJAdUnitJSBridge"

    const-string v0, "creating AdUnit/JS Bridge"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    .line 87
    iput-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->self:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 90
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    .line 92
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "TJAdUnitJSBridge"

    const-string v0, "Error: webView is NULL"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/tapjoy/TJWebViewJSInterface;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJAdUnitJSBridge$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJWebViewJSInterface;-><init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceNotifier;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    .line 131
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v2, "AndroidJavascriptInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->enabled:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tapjoy/TJAdUnitJSBridge;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->enabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->self:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJAdUnitJSBridge;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private downloadFileFromURL(Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    const-string v11, "share_temp"

    .line 691
    const/4 v4, 0x0

    .line 694
    .local v4, "file":Ljava/io/File;
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "ext":Ljava/lang/String;
    const/4 v6, 0x0

    .line 702
    .local v6, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 703
    .local v5, "fileURL":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 706
    iget-object v8, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "share_temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 708
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 709
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 710
    .local v1, "bytesRead":I
    :goto_0
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v6, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 712
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v5    # "fileURL":Ljava/net/URL;
    .end local v7    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "share_temp"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    .restart local v4    # "file":Ljava/io/File;
    return-object v4

    .line 717
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "fileURL":Ljava/net/URL;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 718
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 720
    :catch_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public alert(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 142
    const-string v8, "TJAdUnitJSBridge"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alert_method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v7, ""

    .line 144
    .local v7, "title":Ljava/lang/String;
    const-string v6, ""

    .line 145
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "buttons":Lorg/json/JSONArray;
    :try_start_0
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    const-string v8, "message"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string v8, "buttons"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 159
    :goto_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 161
    .local v3, "dialog":Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 163
    :cond_0
    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v8, v11

    invoke-virtual {p0, p2, v8}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_1
    return-void

    .line 153
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 155
    .local v4, "e":Ljava/lang/Exception;
    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v8, v11

    invoke-virtual {p0, p2, v8}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 174
    packed-switch v5, :pswitch_data_0

    .line 184
    const/4 v1, -0x1

    .line 190
    .local v1, "buttonType":I
    :goto_3
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v9, Lcom/tapjoy/TJAdUnitJSBridge$2;

    invoke-direct {v9, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$2;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v8, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 177
    .end local v1    # "buttonType":I
    :pswitch_0
    const/4 v1, -0x2

    .line 178
    .restart local v1    # "buttonType":I
    goto :goto_3

    .line 180
    .end local v1    # "buttonType":I
    :pswitch_1
    const/4 v1, -0x3

    .line 181
    .restart local v1    # "buttonType":I
    goto :goto_3

    .line 192
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 194
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 230
    .end local v1    # "buttonType":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cacheAsset(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 536
    const-string v2, ""

    .line 537
    .local v2, "assetURL":Ljava/lang/String;
    const-string v0, ""

    .line 538
    .local v0, "assetOfferId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 543
    .local v1, "assetTimeToLive":Ljava/lang/Long;
    :try_start_0
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 555
    :try_start_1
    const-string v4, "offerId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 559
    :goto_0
    :try_start_2
    const-string v4, "timeToLive"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 562
    :goto_1
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 563
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v2, v0, v6, v7}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    :goto_2
    return-void

    .line 545
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 547
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TJAdUnitJSBridge"

    const-string v5, "Unable to cache video. Invalid parameters."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 565
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v8

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 560
    :catch_1
    move-exception v4

    goto :goto_1

    .line 556
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public cachePathForURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    .line 575
    const-string v1, ""

    .line 579
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 587
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 588
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tapjoy/TapjoyCache;->getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v5, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v5, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkAppInstalled(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 241
    const-string v4, ""

    .line 245
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v5, "bundle"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 253
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 256
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 257
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 260
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v7

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 249
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v7

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public clearCache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 472
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache;->clearTapjoyCache()V

    .line 474
    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public closeRequested()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 278
    const-string v0, "closeRequested"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 289
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    .line 290
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    .line 292
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->enabled:Z

    .line 1356
    return-void
.end method

.method public dismiss(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tapjoy/TJAdUnitView;

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .end local p0    # "this":Lcom/tapjoy/TJAdUnitJSBridge;
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 306
    :cond_0
    return-void
.end method

.method public display()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "display"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public displayOffers(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 327
    .local v1, "currencyID":Ljava/lang/String;
    :try_start_0
    const-string v0, "currencyId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    :goto_0
    new-instance v0, Lcom/tapjoy/TJCOffers;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 335
    return-void

    .line 329
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 331
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "TJAdUnitJSBridge"

    const-string v2, "no currencyID for showOfferWall"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayRichMedia(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v7, "html"

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "inline":Z
    const/4 v1, 0x0

    .line 348
    .local v1, "html":Ljava/lang/String;
    :try_start_0
    const-string v4, "inline"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 354
    :goto_0
    :try_start_1
    const-string v4, "html"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 362
    :goto_1
    if-nez v1, :cond_0

    .line 364
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v6

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .end local p0    # "this":Lcom/tapjoy/TJAdUnitJSBridge;
    :goto_2
    return-void

    .line 356
    .restart local p0    # "this":Lcom/tapjoy/TJAdUnitJSBridge;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v2, :cond_1

    .line 372
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/tapjoy/TJAdUnitJSBridge$3;

    invoke-direct {v5, p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$3;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 425
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    const-class v5, Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "tjevent"

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 427
    const-string v4, "view_type"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const-string v4, "html"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v4, "base_url"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v4, "callback_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .end local p0    # "this":Lcom/tapjoy/TJAdUnitJSBridge;
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 350
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/tapjoy/TJAdUnitJSBridge;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public displayStoreURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 452
    :try_start_0
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 456
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 458
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 613
    const-string v6, ""

    .line 614
    .local v6, "url":Ljava/lang/String;
    const-string v0, ""

    .line 617
    .local v0, "cancelMessage":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v5, "trackingUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 622
    .local v9, "videoTrackingObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "trackingUrls"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 624
    if-eqz v9, :cond_0

    .line 626
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 627
    .local v4, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 629
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 633
    .local v3, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 634
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 636
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "TJAdUnitJSBridge"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no tracking url for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 643
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 645
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "TJAdUnitJSBridge"

    const-string v11, "no video tracking urls"

    invoke-static {v10, v11}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    const-string v10, "cancelMessage"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 659
    :goto_1
    :try_start_4
    const-string v10, "url"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 662
    new-instance v8, Landroid/content/Intent;

    iget-object v10, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    const-class v11, Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {v8, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    .local v8, "videoIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 664
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v1

    .line 665
    .local v1, "data":Lcom/tapjoy/TapjoyCachedAssetData;
    if-eqz v1, :cond_1

    .line 666
    const-string v10, "CACHED_VIDEO_LOCATION"

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    .end local v1    # "data":Lcom/tapjoy/TapjoyCachedAssetData;
    :cond_1
    const-string v10, "VIDEO_URL"

    invoke-virtual {v8, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v10, "VIDEO_CANCEL_MESSAGE"

    invoke-virtual {v8, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v10, "VIDEO_SHOULD_DISMISS"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    const-string v10, "callback_id"

    invoke-virtual {v8, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    const-string v10, "VIDEO_TRACKING_URLS"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 674
    iget-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .end local p1    # "json":Lorg/json/JSONObject;
    check-cast p1, Landroid/app/Activity;

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 681
    .end local v8    # "videoIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 652
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v10

    move-object v2, v10

    .line 654
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "TJAdUnitJSBridge"

    const-string v11, "no cancelMessage"

    invoke-static {v10, v11}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 676
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p1    # "json":Lorg/json/JSONObject;
    :catch_3
    move-exception v10

    move-object v2, v10

    .line 678
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v12, v10, v11

    invoke-virtual {p0, p2, v10}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public eventOptimizationCallback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1337
    :try_start_0
    const-string v3, "token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1338
    .local v2, "token":Ljava/lang/String;
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1340
    .local v1, "result":Ljava/lang/Boolean;
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->getInstance()Lcom/tapjoy/TJEventOptimizer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/tapjoy/TJEventOptimizer;->eventOptimizationCallback(Ljava/lang/String;Z)V

    .line 1341
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .end local v1    # "result":Ljava/lang/Boolean;
    .end local v2    # "token":Ljava/lang/String;
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1345
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCachedAssets(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 600
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCache;->cachedAssetsToJSON()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLocation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 739
    const/high16 v4, 0x42c80000    # 100.0f

    .line 740
    .local v4, "accuracy":F
    const/4 v8, 0x0

    .line 745
    .local v8, "enable":Z
    :try_start_0
    const-string v0, "gpsAccuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 752
    :goto_0
    :try_start_1
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 759
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    .line 760
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 761
    .local v6, "criteria":Landroid/location/Criteria;
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "bestProvider":Ljava/lang/String;
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnitJSBridge$4;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    .line 802
    :cond_0
    if-eqz v8, :cond_2

    .line 804
    if-eqz v1, :cond_1

    .line 806
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 807
    new-array v0, v10, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    :goto_2
    return-void

    .line 754
    .end local v1    # "bestProvider":Ljava/lang/String;
    .end local v6    # "criteria":Landroid/location/Criteria;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 756
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 809
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "bestProvider":Ljava/lang/String;
    .restart local v6    # "criteria":Landroid/location/Criteria;
    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 817
    :cond_3
    new-array v0, v10, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v9

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 747
    .end local v1    # "bestProvider":Ljava/lang/String;
    .end local v6    # "criteria":Landroid/location/Criteria;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public varargs invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 966
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method public invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public varargs invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackID"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 988
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->jsBridge:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v2, ""

    invoke-virtual {v1, v0, v2, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public log(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 830
    :try_start_0
    const-string v1, "TJAdUnitJSBridge"

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v4

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public nativeEval(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge$5;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 893
    return-void
.end method

.method public openApp(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 849
    :try_start_0
    const-string v3, "bundle"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 851
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 852
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 856
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public present(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 929
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 930
    .local v2, "visible":Ljava/lang/Boolean;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 932
    .local v1, "transparent":Ljava/lang/Boolean;
    const-string v3, "visible"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 936
    :try_start_1
    const-string v3, "transparent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 942
    :goto_0
    :try_start_2
    const-string v3, "customClose"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 947
    :goto_1
    :try_start_3
    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;

    invoke-direct {v3, p0, v4}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/tapjoy/TJAdUnitJSBridge$ShowWebView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 949
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 956
    .end local v1    # "transparent":Ljava/lang/Boolean;
    .end local v2    # "visible":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 951
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 953
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v6

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 944
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "transparent":Ljava/lang/Boolean;
    .restart local v2    # "visible":Ljava/lang/Boolean;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 938
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public removeAssetFromCache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 512
    const-string v0, ""

    .line 516
    .local v0, "assetURL":Ljava/lang/String;
    :try_start_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 524
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 525
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TJAdUnitJSBridge"

    const-string v3, "Unable to cache video. Invalid parameters."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 527
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendActionCallback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "TJAdUnitJSBridge"

    .line 1007
    new-instance v2, Lcom/tapjoy/TJEventRequest;

    invoke-direct {v2}, Lcom/tapjoy/TJEventRequest;-><init>()V

    .line 1008
    .local v2, "request":Lcom/tapjoy/TJEventRequest;
    const/4 v3, 0x0

    .line 1012
    .local v3, "type":Ljava/lang/String;
    :try_start_0
    const-string v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1021
    :goto_0
    :try_start_1
    const-string v4, "quantity"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->quantity:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1030
    :goto_1
    :try_start_2
    const-string v4, "identifier"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tapjoy/TJEventRequest;->identifier:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1038
    :goto_2
    if-eqz v3, :cond_0

    iget-object v4, v2, Lcom/tapjoy/TJEventRequest;->identifier:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1040
    :cond_0
    const-string v4, "TJAdUnitJSBridge"

    const-string v4, "sendActionCallback: null type or identifier"

    invoke-static {v8, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v7

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    :cond_1
    :goto_3
    return-void

    .line 1014
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1016
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1025
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 1034
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1045
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "currency"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1047
    const/4 v4, 0x3

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    .line 1066
    :cond_3
    :goto_4
    iget v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    if-nez v4, :cond_7

    .line 1068
    const-string v4, "TJAdUnitJSBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v7

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1050
    :cond_4
    const-string v4, "inAppPurchase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1052
    iput v6, v2, Lcom/tapjoy/TJEventRequest;->type:I

    goto :goto_4

    .line 1055
    :cond_5
    const-string v4, "navigation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1057
    const/4 v4, 0x4

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    goto :goto_4

    .line 1060
    :cond_6
    const-string v4, "virtualGood"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1062
    const/4 v4, 0x2

    iput v4, v2, Lcom/tapjoy/TJEventRequest;->type:I

    goto :goto_4

    .line 1074
    :cond_7
    new-instance v4, Lcom/tapjoy/TJAdUnitJSBridge$6;

    invoke-direct {v4, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$6;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/tapjoy/TJEventRequest;->callback:Lcom/tapjoy/TJEventRequestCallback;

    .line 1089
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->eventData:Lcom/tapjoy/TJEventData;

    iget-object v4, v4, Lcom/tapjoy/TJEventData;->guid:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v1

    .line 1090
    .local v1, "event":Lcom/tapjoy/TJEvent;
    if-eqz v1, :cond_1

    .line 1091
    invoke-virtual {v1}, Lcom/tapjoy/TJEvent;->getCallback()Lcom/tapjoy/TJEventCallback;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/tapjoy/TJEventCallback;->didRequestAction(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJEventRequest;)V

    goto :goto_3
.end method

.method public setAllowRedirect(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 1101
    const/4 v0, 0x1

    .line 1105
    .local v0, "enabled":Z
    :try_start_0
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1109
    :goto_0
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 1111
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    return-void

    .line 1107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCloseButtonVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1169
    const-string v2, "TJAdUnitJSBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCloseButtonVisible_method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :try_start_0
    const-string v2, "visible"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1173
    .local v0, "buttonVisible":Z
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$7;

    invoke-direct {v3, p0, v0}, Lcom/tapjoy/TJAdUnitJSBridge$7;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1179
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    .end local v0    # "buttonVisible":Z
    :goto_0
    return-void

    .line 1181
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1183
    .local v1, "e":Ljava/lang/Exception;
    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    .line 1121
    return-void
.end method

.method public setEventPreloadLimit(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 485
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 490
    :try_start_0
    const-string v2, "eventPreloadLimit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 499
    .local v1, "eventPreloadLimit":I
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tapjoy/TapjoyCache;->setEventPreloadLimit(I)V

    .line 500
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    .end local v1    # "eventPreloadLimit":I
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TJAdUnitJSBridge"

    const-string v3, "Unable to set Tapjoy cache\'s event preload limit. Invalid parameters."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSpinnerVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1130
    const/4 v3, 0x0

    .line 1131
    .local v3, "visible":Z
    const-string v2, "Loading..."

    .line 1132
    .local v2, "title":Ljava/lang/String;
    const-string v1, ""

    .line 1136
    .local v1, "message":Ljava/lang/String;
    :try_start_0
    const-string v4, "visible"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1139
    :try_start_1
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1140
    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1143
    :goto_0
    if-eqz v3, :cond_1

    .line 1145
    :try_start_2
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->progressDialog:Landroid/app/ProgressDialog;

    .line 1153
    :cond_0
    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :goto_2
    return-void

    .line 1149
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 1150
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1155
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v7

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public share(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 19
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 1199
    :try_start_0
    const-string v16, "network"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1200
    .local v13, "network":Ljava/lang/String;
    const-string v16, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1201
    .local v12, "message":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1202
    .local v7, "imageURL":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1203
    .local v9, "linkURL":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1204
    .local v11, "localImageURL":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1205
    .local v4, "found":Z
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SEND"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1209
    .local v15, "share":Landroid/content/Intent;
    :try_start_1
    const-string v16, "imageURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 1218
    :goto_0
    :try_start_2
    const-string v16, "linkURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 1227
    :goto_1
    if-eqz v7, :cond_0

    .line 1229
    :try_start_3
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->downloadFileFromURL(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 1231
    .local v10, "localFile":Ljava/io/File;
    if-eqz v10, :cond_0

    .line 1232
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1236
    .end local v10    # "localFile":Ljava/io/File;
    :cond_0
    if-eqz v9, :cond_1

    .line 1238
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1241
    :cond_1
    const-string v16, "android.intent.extra.TEXT"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    const-string v16, "facebook"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1247
    if-eqz v7, :cond_6

    if-eqz v11, :cond_6

    .line 1249
    const-string v16, "image/*"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const-string v16, "android.intent.extra.STREAM"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1270
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 1272
    .local v14, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1274
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1277
    :cond_4
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const/4 v4, 0x1

    .line 1283
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v4, :cond_8

    .line 1285
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    .end local v4    # "found":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "imageURL":Ljava/lang/String;
    .end local v9    # "linkURL":Ljava/lang/String;
    .end local v11    # "localImageURL":Ljava/lang/String;
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "network":Ljava/lang/String;
    .end local v14    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "share":Landroid/content/Intent;
    .end local p1    # "json":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 1211
    .restart local v4    # "found":Z
    .restart local v7    # "imageURL":Ljava/lang/String;
    .restart local v9    # "linkURL":Ljava/lang/String;
    .restart local v11    # "localImageURL":Ljava/lang/String;
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v13    # "network":Ljava/lang/String;
    .restart local v15    # "share":Landroid/content/Intent;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    move-object/from16 v3, v16

    .line 1213
    .local v3, "e":Ljava/lang/Exception;
    const-string v16, "TJAdUnitJSBridge"

    const-string v17, "no imageURL"

    invoke-static/range {v16 .. v17}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1295
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "found":Z
    .end local v7    # "imageURL":Ljava/lang/String;
    .end local v9    # "linkURL":Ljava/lang/String;
    .end local v11    # "localImageURL":Ljava/lang/String;
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "network":Ljava/lang/String;
    .end local v15    # "share":Landroid/content/Intent;
    .end local p1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v16

    move-object/from16 v3, v16

    .line 1297
    .restart local v3    # "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1220
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "found":Z
    .restart local v7    # "imageURL":Ljava/lang/String;
    .restart local v9    # "linkURL":Ljava/lang/String;
    .restart local v11    # "localImageURL":Ljava/lang/String;
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v13    # "network":Ljava/lang/String;
    .restart local v15    # "share":Landroid/content/Intent;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v16

    move-object/from16 v3, v16

    .line 1222
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v16, "TJAdUnitJSBridge"

    const-string v17, "no linkURL"

    invoke-static/range {v16 .. v17}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1254
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v16, "text/plain"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1259
    :cond_7
    const-string v16, "twitter"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1261
    const-string v16, "*/*"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    if-eqz v7, :cond_2

    if-eqz v11, :cond_2

    .line 1265
    const-string v16, "android.intent.extra.STREAM"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1290
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v14    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 1291
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 1292
    const-string v16, "Select"

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 1293
    .local v5, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1    # "json":Lorg/json/JSONObject;
    check-cast p1, Landroid/app/Activity;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method public shouldClose(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1310
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1311
    .local v0, "close":Ljava/lang/Boolean;
    const-string v2, "close"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    instance-of v2, v2, Lcom/tapjoy/TJAdUnitView;

    if-eqz v2, :cond_0

    .line 1316
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1319
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v0    # "close":Ljava/lang/Boolean;
    :goto_0
    iput-boolean v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 1331
    return-void

    .line 1321
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1323
    .local v1, "e":Ljava/lang/Exception;
    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1327
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public triggerEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 904
    :try_start_0
    const-string v2, "eventName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 910
    .local v1, "eventName":Ljava/lang/String;
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->videoNotifierStart()V

    .line 917
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TJAdUnitJSBridge"

    const-string v3, "Unable to triggerEvent. No event name."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "eventName":Ljava/lang/String;
    :cond_1
    const-string v2, "complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->videoNotifierComplete()V

    goto :goto_0

    .line 914
    :cond_2
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/tapjoy/TapjoyVideo;->videoNotifierError(I)V

    goto :goto_0
.end method
