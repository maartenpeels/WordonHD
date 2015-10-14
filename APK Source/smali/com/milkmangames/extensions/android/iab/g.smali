.class final Lcom/milkmangames/extensions/android/iab/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/iab/a;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/iab/a;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/iab/g;->a:Lcom/milkmangames/extensions/android/iab/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/iab/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/iab/g;-><init>(Lcom/milkmangames/extensions/android/iab/a;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/iab/g;->a:Lcom/milkmangames/extensions/android/iab/a;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/iab/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[IABExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
