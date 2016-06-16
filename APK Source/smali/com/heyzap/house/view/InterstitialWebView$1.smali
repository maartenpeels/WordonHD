.class Lcom/heyzap/house/view/InterstitialWebView$1;
.super Ljava/lang/Object;
.source "InterstitialWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView;->render(Ljava/lang/String;IILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$backgroundOverlayColor:Ljava/lang/Integer;

.field final synthetic val$height:I

.field final synthetic val$htmlString:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;Landroid/app/Activity;IILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    iput-object p2, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$width:I

    iput p4, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$height:I

    iput-object p5, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$backgroundOverlayColor:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$htmlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    iget-object v2, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$width:I

    iget v4, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$height:I

    # invokes: Lcom/heyzap/house/view/InterstitialWebView;->setWidths(Landroid/content/Context;II)V
    invoke-static {v0, v2, v3, v4}, Lcom/heyzap/house/view/InterstitialWebView;->access$000(Lcom/heyzap/house/view/InterstitialWebView;Landroid/content/Context;II)V

    .line 79
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    iget-object v2, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$backgroundOverlayColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/heyzap/house/view/InterstitialWebView;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$100(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->webview:Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;

    iget-object v2, p0, Lcom/heyzap/house/view/InterstitialWebView$1;->val$htmlString:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/house/view/InterstitialWebView$CustomWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
