.class final Lcom/milkmangames/extensions/android/goviral/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milkmangames/extensions/android/goviral/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b$f;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/b$f;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v0

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v0, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREArray;Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v3, :cond_0

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v3

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b$f;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;DLandroid/os/Bundle;)V

    :goto_1
    return-object v5

    :cond_0
    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/b$f;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static {v1, v2, v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "[GVExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v0, v5

    goto :goto_0
.end method
