.class Lcom/heyzap/house/view/InterstitialWebView$5;
.super Landroid/webkit/WebChromeClient;
.source "InterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView;->setupWebview()V
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
    .line 249
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$5;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Console Message"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 254
    return-void
.end method
