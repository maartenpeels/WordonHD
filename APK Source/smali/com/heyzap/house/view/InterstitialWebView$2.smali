.class Lcom/heyzap/house/view/InterstitialWebView$2;
.super Ljava/lang/Object;
.source "InterstitialWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView;->hide(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;

.field final synthetic val$animated:Ljava/lang/Boolean;

.field final synthetic val$doCallback:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    iput-object p2, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->val$animated:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->val$doCallback:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->val$animated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->val$doCallback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # invokes: Lcom/heyzap/house/view/InterstitialWebView;->viewDidHide()V
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$200(Lcom/heyzap/house/view/InterstitialWebView;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 104
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    new-instance v1, Lcom/heyzap/house/view/InterstitialWebView$2$1;

    invoke-direct {v1, p0}, Lcom/heyzap/house/view/InterstitialWebView$2$1;-><init>(Lcom/heyzap/house/view/InterstitialWebView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 126
    iget-object v1, p0, Lcom/heyzap/house/view/InterstitialWebView$2;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;
    invoke-static {v1}, Lcom/heyzap/house/view/InterstitialWebView;->access$100(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
