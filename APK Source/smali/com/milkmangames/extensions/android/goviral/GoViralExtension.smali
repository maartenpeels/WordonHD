.class public Lcom/milkmangames/extensions/android/goviral/GoViralExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2

    const-string v0, "[GVExtension]"

    const-string v1, "try create context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/milkmangames/extensions/android/goviral/b;

    invoke-direct {v0}, Lcom/milkmangames/extensions/android/goviral/b;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
