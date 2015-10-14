.class final Lcom/milkmangames/extensions/android/iab/l;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/iab/m;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/milkmangames/extensions/android/iab/i;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/iab/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/iab/l;->b:Lcom/milkmangames/extensions/android/iab/i;

    iput p2, p0, Lcom/milkmangames/extensions/android/iab/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/r;)V
    .locals 4

    invoke-virtual {p1}, Lc/m/x/a/iab/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/milkmangames/extensions/android/iab/i;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/l;->b:Lcom/milkmangames/extensions/android/iab/i;

    invoke-virtual {v1, v0, p1}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Lc/m/x/a/iab/p;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/l;->b:Lcom/milkmangames/extensions/android/iab/i;

    invoke-static {v0, p2}, Lcom/milkmangames/extensions/android/iab/i;->a(Lcom/milkmangames/extensions/android/iab/i;Lc/m/x/a/iab/r;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2}, Lcom/milkmangames/extensions/android/iab/n;->a(Lc/m/x/a/iab/r;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "requestId"

    iget v3, p0, Lcom/milkmangames/extensions/android/iab/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "purchase"

    invoke-static {v0, v2, v1}, Lcom/milkmangames/extensions/android/iab/n;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/iab/l;->b:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v2, Lcom/milkmangames/extensions/android/iab/i;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
