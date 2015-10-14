.class Lcom/heyzap/house/view/InterstitialWebView$3;
.super Ljava/lang/Object;
.source "InterstitialWebView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView;->showWithAnimation(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;

.field final synthetic val$withCallback:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$3;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    iput-object p2, p0, Lcom/heyzap/house/view/InterstitialWebView$3;->val$withCallback:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$3;->val$withCallback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$3;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # invokes: Lcom/heyzap/house/view/InterstitialWebView;->viewDidShow()V
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$300(Lcom/heyzap/house/view/InterstitialWebView;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
