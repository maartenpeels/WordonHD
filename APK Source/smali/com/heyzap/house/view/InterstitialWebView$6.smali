.class Lcom/heyzap/house/view/InterstitialWebView$6;
.super Ljava/lang/Object;
.source "InterstitialWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView;->setTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$6;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$6;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->globalTouchEnabled:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$500(Lcom/heyzap/house/view/InterstitialWebView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$6;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$6;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->click()V

    .line 307
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
