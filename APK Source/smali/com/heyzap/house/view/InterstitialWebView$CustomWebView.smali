.class Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;
.super Landroid/webkit/WebView;
.source "InterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/view/InterstitialWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    .line 338
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->setBackgroundColor(I)V

    .line 340
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    invoke-virtual {v0, p1, p2}, Lcom/heyzap/house/view/InterstitialWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
