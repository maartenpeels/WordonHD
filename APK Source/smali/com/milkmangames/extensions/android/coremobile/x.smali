.class abstract Lcom/milkmangames/extensions/android/coremobile/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field protected b:Lcom/milkmangames/extensions/android/coremobile/b;

.field final synthetic c:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method public constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/x;->c:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/x;->b:Lcom/milkmangames/extensions/android/coremobile/b;

    return-void
.end method


# virtual methods
.method protected abstract a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end method

.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/milkmangames/extensions/android/coremobile/x;->a([Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v3, "Call failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
