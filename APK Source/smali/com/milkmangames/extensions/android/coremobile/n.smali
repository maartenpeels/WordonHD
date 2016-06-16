.class final Lcom/milkmangames/extensions/android/coremobile/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/n;->g:Lcom/milkmangames/extensions/android/coremobile/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/coremobile/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/milkmangames/extensions/android/coremobile/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/milkmangames/extensions/android/coremobile/n;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/milkmangames/extensions/android/coremobile/n;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/milkmangames/extensions/android/coremobile/n;->e:Z

    iput-object p7, p0, Lcom/milkmangames/extensions/android/coremobile/n;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 10

    const-string v6, ""

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "On Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, ""

    const-string v2, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/n;->g:Lcom/milkmangames/extensions/android/coremobile/b;

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/n;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/n;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/milkmangames/extensions/android/coremobile/n;->b:Ljava/lang/String;

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_0
    :try_start_0
    const-string v7, "title"

    iget-object v8, p0, Lcom/milkmangames/extensions/android/coremobile/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "message"

    iget-object v8, p0, Lcom/milkmangames/extensions/android/coremobile/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "selected"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cancelLabel"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "otherLabel"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "input"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isSecret"

    iget-boolean v2, p0, Lcom/milkmangames/extensions/android/coremobile/n;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "user"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pass"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requestID"

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/n;->g:Lcom/milkmangames/extensions/android/coremobile/b;

    const-string v2, "ALERT_DISMISSED"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/n;->b:Ljava/lang/String;

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v2, "JSON Process exception."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
