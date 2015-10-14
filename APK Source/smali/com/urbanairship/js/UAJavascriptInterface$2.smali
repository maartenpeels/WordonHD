.class Lcom/urbanairship/js/UAJavascriptInterface$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/urbanairship/js/UAJavascriptInterface;


# virtual methods
.method public final a(Lcom/urbanairship/actions/ActionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface$2;->c:Lcom/urbanairship/js/UAJavascriptInterface;

    iget-object v0, p0, Lcom/urbanairship/js/UAJavascriptInterface$2;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/urbanairship/js/UAJavascriptInterface;->a(Ljava/lang/String;Lcom/urbanairship/actions/ActionResult;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/js/UAJavascriptInterface$2;->c:Lcom/urbanairship/js/UAJavascriptInterface;

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionResult;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/js/UAJavascriptInterface$2;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/urbanairship/js/UAJavascriptInterface;->a(Lcom/urbanairship/js/UAJavascriptInterface;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
