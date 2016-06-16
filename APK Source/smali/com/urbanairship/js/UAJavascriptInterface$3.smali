.class Lcom/urbanairship/js/UAJavascriptInterface$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/urbanairship/js/UAJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/urbanairship/js/UAJavascriptInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/js/UAJavascriptInterface$3;->b:Lcom/urbanairship/js/UAJavascriptInterface;

    iput-object p2, p0, Lcom/urbanairship/js/UAJavascriptInterface$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface$3;->b:Lcom/urbanairship/js/UAJavascriptInterface;

    invoke-static {v0}, Lcom/urbanairship/js/UAJavascriptInterface;->a(Lcom/urbanairship/js/UAJavascriptInterface;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/js/UAJavascriptInterface$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
