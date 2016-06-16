.class final Lcom/milkmangames/extensions/android/goviral/o;
.super Lcom/milkmangames/extensions/android/goviral/b$d;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/o;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/b$d;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREArray;Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/o;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v1, v0, v2}, Lcom/milkmangames/extensions/android/goviral/b;->b(Lcom/milkmangames/extensions/android/goviral/b;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
