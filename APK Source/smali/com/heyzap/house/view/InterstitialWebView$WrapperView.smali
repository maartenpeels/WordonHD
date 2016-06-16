.class Lcom/heyzap/house/view/InterstitialWebView$WrapperView;
.super Landroid/widget/RelativeLayout;
.source "InterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/view/InterstitialWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrapperView"
.end annotation


# static fields
.field private static final OVERLAY_PADDING:I = 0xa


# instance fields
.field public container:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;

.field public webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 355
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    .line 356
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 358
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->setGravity(I)V

    .line 364
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->container:Landroid/widget/FrameLayout;

    .line 366
    invoke-static {p2, v4}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    .line 368
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 371
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    iget-object v1, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v0, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;-><init>(Lcom/heyzap/house/view/InterstitialWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    .line 377
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0, v3}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0, v3}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setVerticalScrollBarEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0, v3}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setScrollBarStyle(I)V

    .line 381
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v0, v3}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setBackgroundColor(I)V

    .line 383
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 386
    iget-object v1, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    return-void
.end method
