.class public Lcom/milkmangames/extensions/android/iab/IABExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static a:Lcom/milkmangames/extensions/android/iab/a;


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
    .locals 1

    new-instance v0, Lcom/milkmangames/extensions/android/iab/a;

    invoke-direct {v0}, Lcom/milkmangames/extensions/android/iab/a;-><init>()V

    sput-object v0, Lcom/milkmangames/extensions/android/iab/IABExtension;->a:Lcom/milkmangames/extensions/android/iab/a;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    sget-object v0, Lcom/milkmangames/extensions/android/iab/IABExtension;->a:Lcom/milkmangames/extensions/android/iab/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/milkmangames/extensions/android/iab/IABExtension;->a:Lcom/milkmangames/extensions/android/iab/a;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/iab/a;->b()V

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
