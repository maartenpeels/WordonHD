.class final Lcom/milkmangames/extensions/android/iab/j;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/iab/n;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/iab/i;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/iab/i;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/iab/j;->a:Lcom/milkmangames/extensions/android/iab/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/iab/p;)V
    .locals 3

    invoke-virtual {p1}, Lc/m/x/a/iab/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/j;->a:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/milkmangames/extensions/android/iab/i;->a(Ljava/lang/String;Lc/m/x/a/iab/p;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/j;->a:Lcom/milkmangames/extensions/android/iab/i;

    sget-object v1, Lcom/milkmangames/extensions/android/iab/i;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/iab/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
