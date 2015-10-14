.class Lcom/urbanairship/js/UAJavascriptInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/js/UAJavascriptInterface;


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface$1;->a:Lcom/urbanairship/js/UAJavascriptInterface;

    invoke-static {v0}, Lcom/urbanairship/js/UAJavascriptInterface;->a(Lcom/urbanairship/js/UAJavascriptInterface;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface$1;->a:Lcom/urbanairship/js/UAJavascriptInterface;

    invoke-static {v0}, Lcom/urbanairship/js/UAJavascriptInterface;->a(Lcom/urbanairship/js/UAJavascriptInterface;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
