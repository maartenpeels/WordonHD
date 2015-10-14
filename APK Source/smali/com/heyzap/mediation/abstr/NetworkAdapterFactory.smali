.class public Lcom/heyzap/mediation/abstr/NetworkAdapterFactory;
.super Ljava/lang/Object;
.source "NetworkAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/heyzap/mediation/adapter/AdapterConfiguration;)Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/heyzap/mediation/adapter/AdapterConfiguration;->getAdapterClassName()Ljava/lang/String;

    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    :try_start_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "No adapter class name provided."

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    new-instance v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;

    const-string v1, "No adapter available or network classes not onboard."

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$ConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/heyzap/mediation/adapter/AdapterConfiguration;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/abstr/NetworkAdapter;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 26
    return-object p0

    .line 29
    :catch_1
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 31
    :catch_2
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 34
    :catch_3
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :catch_4
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :catch_5
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
