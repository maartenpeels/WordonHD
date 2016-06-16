.class public Lcom/urbanairship/widget/LandingPageWebView;
.super Lcom/urbanairship/widget/UAWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/widget/LandingPageWebView;->c()Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/widget/LandingPageWebView;->c()Landroid/webkit/WebViewClient;

    move-result-object v1

    instance-of v1, v1, Lcom/urbanairship/widget/UAWebViewClient;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/widget/LandingPageWebView;->c()Landroid/webkit/WebViewClient;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/widget/UAWebViewClient;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/urbanairship/widget/UAWebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-super {p0}, Lcom/urbanairship/widget/UAWebView;->a()V

    new-instance v0, Lcom/urbanairship/js/UAJavascriptInterface;

    invoke-direct {v0, p0}, Lcom/urbanairship/js/UAJavascriptInterface;-><init>(Landroid/webkit/WebView;)V

    const-string v1, "UAirship"

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/widget/LandingPageWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/widget/LandingPageWebView;->b()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/LandingPageWebView;->a(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, v1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-virtual {p0}, Lcom/urbanairship/widget/LandingPageWebView;->b()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/urbanairship/widget/LandingPageWebView;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
