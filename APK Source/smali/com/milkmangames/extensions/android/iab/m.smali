.class final Lcom/milkmangames/extensions/android/iab/m;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/iab/k;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/milkmangames/extensions/android/iab/i;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/iab/i;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/iab/m;->c:Lcom/milkmangames/extensions/android/iab/i;

    iput p2, p0, Lcom/milkmangames/extensions/android/iab/m;->a:I

    iput-object p3, p0, Lcom/milkmangames/extensions/android/iab/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/iab/r;Lc/m/x/a/iab/p;)V
    .locals 4

    invoke-virtual {p2}, Lc/m/x/a/iab/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/m;->c:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Lc/m/x/a/iab/p;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/milkmangames/extensions/android/iab/n;->a(Lc/m/x/a/iab/r;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "requestId"

    iget v3, p0, Lcom/milkmangames/extensions/android/iab/m;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "sku"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/iab/m;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "purchase"

    invoke-static {v0, v2, v1}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/m;->c:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v2, Lcom/milkmangames/extensions/android/iab/i;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
