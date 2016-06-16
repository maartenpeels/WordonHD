.class final Lcom/milkmangames/extensions/android/goviral/k;
.super Lcom/milkmangames/extensions/android/goviral/b$d;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/k;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/b$d;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    move-object v0, v2

    check-cast v0, Lcom/adobe/fre/FREArray;

    move-object v4, v0

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aget-object v5, p1, v5

    check-cast v5, Lcom/adobe/fre/FREBitmapData;

    const/4 v6, 0x5

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREArray;Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/k;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static/range {v1 .. v6}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method
