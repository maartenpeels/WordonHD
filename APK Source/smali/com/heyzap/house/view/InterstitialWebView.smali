.class public Lcom/heyzap/house/view/InterstitialWebView;
.super Landroid/widget/FrameLayout;
.source "InterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/view/InterstitialWebView$WrapperView;,
        Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;
    }
.end annotation


# static fields
.field private static final MAX_SIZE_DP_HEIGHT:I = 0x168

.field private static final MAX_SIZE_DP_WIDTH:I = 0x168

.field private static final MAX_SIZE_PERCENT:F = 0.98f


# instance fields
.field public contentLoaded:Ljava/lang/Boolean;

.field private globalTouchEnabled:Ljava/lang/Boolean;

.field private listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

.field private model:Lcom/heyzap/house/model/AdModel;

.field private renderStartTime:J

.field private wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->globalTouchEnabled:Ljava/lang/Boolean;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->contentLoaded:Ljava/lang/Boolean;

    .line 49
    iput-object p2, p0, Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    .line 50
    new-instance v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    invoke-direct {v0, p0, p1}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;-><init>(Lcom/heyzap/house/view/InterstitialWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    .line 51
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/InterstitialWebView;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/heyzap/house/view/InterstitialWebView;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/heyzap/house/view/InterstitialWebView;->setFocusableInTouchMode(Z)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/view/InterstitialWebView;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/heyzap/house/view/InterstitialWebView;->setWidths(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/view/InterstitialWebView$WrapperView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/view/InterstitialWebView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/heyzap/house/view/InterstitialWebView;->viewDidHide()V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/house/view/InterstitialWebView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/heyzap/house/view/InterstitialWebView;->viewDidShow()V

    return-void
.end method

.method static synthetic access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/house/view/InterstitialWebView;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->globalTouchEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method private render(Ljava/lang/String;IILjava/lang/Integer;)V
    .locals 7

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->renderStartTime:J

    .line 71
    invoke-direct {p0}, Lcom/heyzap/house/view/InterstitialWebView;->setupWebview()V

    .line 72
    invoke-direct {p0}, Lcom/heyzap/house/view/InterstitialWebView;->setTouchListener()V

    .line 73
    invoke-virtual {p0}, Lcom/heyzap/house/view/InterstitialWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 75
    new-instance v0, Lcom/heyzap/house/view/InterstitialWebView$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/heyzap/house/view/InterstitialWebView$1;-><init>(Lcom/heyzap/house/view/InterstitialWebView;Landroid/app/Activity;IILjava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method private setTouchListener()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    new-instance v1, Lcom/heyzap/house/view/InterstitialWebView$6;

    invoke-direct {v1, p0}, Lcom/heyzap/house/view/InterstitialWebView$6;-><init>(Lcom/heyzap/house/view/InterstitialWebView;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    return-void
.end method

.method private setWidths(Landroid/content/Context;II)V
    .locals 5

    .prologue
    const/16 v4, 0x168

    const v3, 0x3f7ae148    # 0.98f

    .line 262
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 264
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 266
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 269
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 273
    invoke-static {p1, v4}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 275
    invoke-static {p1, v4}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 278
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 279
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v2

    move v2, v1

    .line 282
    :goto_0
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 284
    iget-object v1, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    invoke-virtual {v1}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 288
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 291
    invoke-virtual {p0, v1}, Lcom/heyzap/house/view/InterstitialWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    return-void

    :cond_0
    move v2, p3

    move v3, p2

    goto :goto_0
.end method

.method private setupWebview()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 183
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 186
    new-instance v0, Lcom/heyzap/house/view/InterstitialWebView$4;

    invoke-direct {v0, p0}, Lcom/heyzap/house/view/InterstitialWebView$4;-><init>(Lcom/heyzap/house/view/InterstitialWebView;)V

    iget-wide v1, p0, Lcom/heyzap/house/view/InterstitialWebView;->renderStartTime:J

    iget-object v3, p0, Lcom/heyzap/house/view/InterstitialWebView;->model:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/house/view/InterstitialWebView$4;->init(JLcom/heyzap/house/model/AdModel;)Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/heyzap/house/view/InterstitialWebView$5;

    invoke-direct {v1, p0}, Lcom/heyzap/house/view/InterstitialWebView$5;-><init>(Lcom/heyzap/house/view/InterstitialWebView;)V

    .line 257
    iget-object v2, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v2, v2, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v2, v0}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 258
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 259
    return-void
.end method

.method private showWithAnimation(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 142
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 143
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 146
    new-instance v2, Lcom/heyzap/house/view/InterstitialWebView$3;

    invoke-direct {v2, p0, p1}, Lcom/heyzap/house/view/InterstitialWebView$3;-><init>(Lcom/heyzap/house/view/InterstitialWebView;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    invoke-direct {p0}, Lcom/heyzap/house/view/InterstitialWebView;->setTouchListener()V

    .line 166
    iget-object v1, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    invoke-virtual {v1, v0}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    return-void
.end method

.method private viewDidHide()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    const-string v1, "javascript: try{adViewHidden();} catch(e) {}"

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private viewDidShow()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    const-string v1, "javascript: try{adViewShown();}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 172
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/heyzap/house/view/InterstitialWebView;->model:Lcom/heyzap/house/model/AdModel;

    .line 87
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public hide(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/house/view/InterstitialWebView;->hide(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 135
    return-void
.end method

.method public hide(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 93
    new-instance v1, Lcom/heyzap/house/view/InterstitialWebView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/house/view/InterstitialWebView$2;-><init>(Lcom/heyzap/house/view/InterstitialWebView;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 316
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/house/view/InterstitialWebView;->showWithAnimation(Ljava/lang/Boolean;)V

    .line 317
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->model:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->model:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->back(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->commit(Z)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    :cond_1
    move v0, v1

    .line 329
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public render(Lcom/heyzap/house/model/InterstitialModel;)V
    .locals 4

    .prologue
    .line 59
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView;->model:Lcom/heyzap/house/model/AdModel;

    .line 60
    invoke-virtual {p1}, Lcom/heyzap/house/model/InterstitialModel;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/heyzap/house/model/InterstitialModel;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/heyzap/house/model/InterstitialModel;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/heyzap/house/model/InterstitialModel;->getBackgroundOverlayColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/heyzap/house/view/InterstitialWebView;->render(Ljava/lang/String;IILjava/lang/Integer;)V

    .line 61
    return-void
.end method

.method public render(Lcom/heyzap/house/model/VideoModel;)V
    .locals 4

    .prologue
    .line 64
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView;->model:Lcom/heyzap/house/model/AdModel;

    .line 65
    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getInterstitialWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getInterstitialWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/heyzap/house/model/VideoModel;->getInterstitialBackgroundOverlayColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/heyzap/house/view/InterstitialWebView;->render(Ljava/lang/String;IILjava/lang/Integer;)V

    .line 66
    return-void
.end method
