.class final Lcom/milkmangames/extensions/android/goviral/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milkmangames/extensions/android/goviral/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/b$e;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/goviral/b$e;-><init>(Lcom/milkmangames/extensions/android/goviral/b;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    check-cast v3, Lcom/adobe/fre/FREArray;

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    invoke-static {v0, v3}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/adobe/fre/FREArray;Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/b$e;->a:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-static/range {v0 .. v6}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[GVExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method