.class final Lcom/milkmangames/extensions/android/iab/k;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/iab/o;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/milkmangames/extensions/android/iab/i;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/iab/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/iab/k;->b:Lcom/milkmangames/extensions/android/iab/i;

    iput p2, p0, Lcom/milkmangames/extensions/android/iab/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/q;)V
    .locals 8

    invoke-virtual {p1}, Lc/m/x/a/iab/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/k;->b:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Lc/m/x/a/iab/p;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lc/m/x/a/iab/q;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/iab/t;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "itemType"

    invoke-virtual {v0}, Lc/m/x/a/iab/t;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "type"

    invoke-virtual {v0}, Lc/m/x/a/iab/t;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "price"

    invoke-virtual {v0}, Lc/m/x/a/iab/t;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    invoke-virtual {v0}, Lc/m/x/a/iab/t;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "description"

    invoke-virtual {v0}, Lc/m/x/a/iab/t;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/m/x/a/iab/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lc/m/x/a/iab/q;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/iab/r;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/iab/n;->a(Lc/m/x/a/iab/r;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0}, Lc/m/x/a/iab/r;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/milkmangames/extensions/android/iab/k;->b:Lcom/milkmangames/extensions/android/iab/i;

    invoke-static {v5, v0}, Lcom/milkmangames/extensions/android/iab/i;->a(Lcom/milkmangames/extensions/android/iab/i;Lc/m/x/a/iab/r;)V

    goto :goto_2

    :cond_2
    const-string v0, "skus"

    invoke-static {v1, v0, v2}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "purchases"

    invoke-static {v1, v0, v3}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "requestId"

    iget v2, p0, Lcom/milkmangames/extensions/android/iab/k;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/k;->b:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v2, Lcom/milkmangames/extensions/android/iab/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
