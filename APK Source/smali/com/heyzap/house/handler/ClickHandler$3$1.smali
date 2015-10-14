.class Lcom/heyzap/house/handler/ClickHandler$3$1;
.super Ljava/lang/Object;
.source "ClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/handler/ClickHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/house/handler/ClickHandler$3;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/ClickHandler$3;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler$3$1;->this$1:Lcom/heyzap/house/handler/ClickHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$3$1;->this$1:Lcom/heyzap/house/handler/ClickHandler$3;

    iget-object v0, v0, Lcom/heyzap/house/handler/ClickHandler$3;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$3$1;->this$1:Lcom/heyzap/house/handler/ClickHandler$3;

    iget-object v1, v1, Lcom/heyzap/house/handler/ClickHandler$3;->val$adUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 210
    return-void
.end method
