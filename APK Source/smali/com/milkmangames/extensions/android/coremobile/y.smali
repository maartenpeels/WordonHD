.class final Lcom/milkmangames/extensions/android/coremobile/y;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Landroid/widget/EditText;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field final synthetic j:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method public constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/y;->j:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p9, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    if-nez p10, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/y;->b:Landroid/widget/EditText;

    iput p2, p0, Lcom/milkmangames/extensions/android/coremobile/y;->c:I

    iput-object p3, p0, Lcom/milkmangames/extensions/android/coremobile/y;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/milkmangames/extensions/android/coremobile/y;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/milkmangames/extensions/android/coremobile/y;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/milkmangames/extensions/android/coremobile/y;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/milkmangames/extensions/android/coremobile/y;->i:Z

    return-void

    :cond_0
    move-object v0, p9

    goto :goto_0

    :cond_1
    move-object v0, p10

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)V
    .locals 10

    const-string v7, ""

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, ""

    const-string v1, ""

    const-string v1, ""

    iget v1, p0, Lcom/milkmangames/extensions/android/coremobile/y;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v7

    move-object v3, v1

    move-object v1, v7

    :goto_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->j:Lcom/milkmangames/extensions/android/coremobile/b;

    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/milkmangames/extensions/android/coremobile/y;->d:Ljava/lang/String;

    move-object v9, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, v9

    :goto_1
    :try_start_0
    const-string v7, "title"

    iget-object v8, p0, Lcom/milkmangames/extensions/android/coremobile/y;->g:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "message"

    iget-object v8, p0, Lcom/milkmangames/extensions/android/coremobile/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "selected"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "cancelLabel"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "otherLabel"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "input"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isSecret"

    iget-boolean v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->i:Z

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "user"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pass"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requestID"

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/y;->j:Lcom/milkmangames/extensions/android/coremobile/b;

    const-string v2, "ALERT_DISMISSED"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/milkmangames/extensions/android/coremobile/y;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/y;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/milkmangames/extensions/android/coremobile/y;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v7

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->d:Ljava/lang/String;

    const-string v5, ""

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/y;->d:Ljava/lang/String;

    move-object v6, v4

    move-object v4, v7

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->j:Lcom/milkmangames/extensions/android/coremobile/b;

    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/milkmangames/extensions/android/coremobile/y;->d:Ljava/lang/String;

    move-object v9, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v9

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/milkmangames/extensions/android/coremobile/y;->e:Ljava/lang/String;

    const-string v6, ""

    move-object v6, v5

    move-object v5, v4

    move-object v4, v7

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v2, "JSON Process exception."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    goto/16 :goto_0
.end method
