.class public Lcom/heyzap/house/handler/ClickHandler;
.super Ljava/lang/Object;
.source "ClickHandler.java"


# instance fields
.field private marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private model:Lcom/heyzap/house/model/AdModel;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/model/AdModel;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchIfMarket(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/handler/ClickHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private launchIfMarket(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "amzn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    .line 149
    :goto_0
    return v0

    .line 119
    :cond_0
    const-string v0, "amazon.com/gp/mas/dl/android?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    const-string v0, "android?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amzn://apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "market"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "play.google"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const-string v0, "details?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 137
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    move v0, v3

    .line 145
    goto :goto_0

    .line 142
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->marketOpenedTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    const/high16 v1, 0x20000

    .line 84
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 85
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    .line 88
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "The Appstore cannot be found."

    .line 101
    :goto_1
    const-string v0, "Market not found, cannot install"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    const-string v1, "(LAUNCH MARKET FAILED)"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :cond_2
    :try_start_2
    const-string v0, "The Play Store cannot be found."
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public doClick(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    iget-object v0, v0, Lcom/heyzap/house/model/AdModel;->actionUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/heyzap/house/handler/ClickHandler;->doClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public doClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/heyzap/house/handler/ClickHandler$1;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method protected gotoMarket(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 153
    .line 154
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchIfMarket(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/house/handler/ClickHandler$2;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 197
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 198
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 200
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 202
    sget-object v1, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/heyzap/house/handler/ClickHandler$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/heyzap/house/handler/ClickHandler$3;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    sget-object v1, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/heyzap/house/handler/ClickHandler$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/heyzap/house/handler/ClickHandler$4;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 v3, 0x2ee

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    sget-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler$5;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x4e2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
