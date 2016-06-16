.class final Lcom/milkmangames/extensions/android/goviral/l;
.super Lcom/milkmangames/extensions/android/goviral/b$d;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/l;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/b$d;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const-string v0, "[GVExtension]"

    const-string v1, "Read bmp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/l;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v2, v0, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Lcom/adobe/fre/FREBitmapData;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
