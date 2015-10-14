.class Lcom/heyzap/house/view/InterstitialWebView$2$1;
.super Ljava/lang/Object;
.source "InterstitialWebView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/house/view/InterstitialWebView$2;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/InterstitialWebView$2;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$2$1;->this$1:Lcom/heyzap/house/view/InterstitialWebView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$2$1;->this$1:Lcom/heyzap/house/view/InterstitialWebView$2;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$2;->val$doCallback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$2$1;->this$1:Lcom/heyzap/house/view/InterstitialWebView$2;

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$2;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # invokes: Lcom/heyzap/house/view/InterstitialWebView;->viewDidHide()V
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$200(Lcom/heyzap/house/view/InterstitialWebView;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
