.class abstract Lcom/milkmangames/extensions/android/goviral/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milkmangames/extensions/android/goviral/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation


# instance fields
.field protected b:Lcom/milkmangames/extensions/android/goviral/b;

.field final synthetic c:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method public constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b$d;->c:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b$d;->b:Lcom/milkmangames/extensions/android/goviral/b;

    return-void
.end method


# virtual methods
.method protected abstract a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end method

.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const-string v3, "[GVExtension]"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/milkmangames/extensions/android/goviral/b$d;->a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "[GVExtension]"

    const-string v2, "Call failed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "[GVExtension]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
