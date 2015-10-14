.class public final Lc/m/x/a/iab/u;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/iab/z;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field a:Lcom/adobe/fre/FREContext;

.field b:Lc/m/x/a/iab/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[MMGAPA]"

    sput-object v0, Lc/m/x/a/iab/u;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/m/x/a/iab/u;->a:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public final a(Lc/m/x/a/iab/y;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    iput-object p1, p0, Lc/m/x/a/iab/u;->b:Lc/m/x/a/iab/y;

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/iab/u;->a:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sAndroidActivityWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lc/m/x/a/iab/u;->c:Ljava/lang/String;

    const-string v1, "Could not discover AIR container."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lc/m/x/a/iab/u;->c:Ljava/lang/String;

    const-string v1, "Exception hooking AIR container."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    move v2, v9

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityResultCallback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aget-object v6, v1, v2

    aput-object v6, v4, v5

    new-instance v5, Lc/m/x/a/iab/v;

    invoke-direct {v5, p0, p1}, Lc/m/x/a/iab/v;-><init>(Lc/m/x/a/iab/u;Lc/m/x/a/iab/y;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v5, v9

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "addActivityResultListener"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v4, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StateChangeCallback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aget-object v6, v1, v2

    aput-object v6, v4, v5

    new-instance v5, Lc/m/x/a/iab/w;

    invoke-direct {v5, p0, p1}, Lc/m/x/a/iab/w;-><init>(Lc/m/x/a/iab/u;Lc/m/x/a/iab/y;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v5, v9

    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "addActivityStateChangeListner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v4, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Lc/m/x/a/iab/u;->c:Ljava/lang/String;

    const-string v1, "Invocation target exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lc/m/x/a/iab/u;->c:Ljava/lang/String;

    const-string v1, "Failed to get the statechange class."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/iab/u;->a:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
