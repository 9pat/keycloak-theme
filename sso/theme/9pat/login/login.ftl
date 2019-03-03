<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>

    <#if section = "form">
		<!-- div class="container" -->
			<div class="row main-box">
				<div class="col-sm-6 main-title" style="padding-top:40px;">
				<h1 class="mb-1">SSO - Login</h1>
				<h3 class="mb-2">เข้าสู่ระบบ</h3>
				</div>
				<div class="col-sm-6 text-center">
				<#if realm.password>
					<form class="form-signin" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">

						<label for="username" class="sr-only"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
						<#if usernameEditDisabled??>
						<input tabindex="1" id="username" class="form-control" name="username" value="${(login.username!'')}" type="text" disabled />
						<#else>
						<input tabindex="1" id="username" class="form-control" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />
						</#if>
						
						<label for="password" class="sr-only">${msg("password")}</label>
						<input tabindex="2" id="password" class="form-control" name="password" type="password" placeholder="Password" required autocomplete="off" />
						
						<#if realm.rememberMe && !usernameEditDisabled??>
						<div class="checkbox mb-3">
							<label>
								<#if login.rememberMe??>
									<input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
								<#else>
									<input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
								</#if>
							</label>
						</div>
						</#if>
						
						<input tabindex="4" class="btn btn-lg btn-primary btn-block" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
						
					</form>
				</#if>
				</div>
			</div>
			

			
			<div class="row">
				<div class="col-sm-2 col-6"><a href="#"><img class="test-icon" src="${url.resourcesPath}/img/icon.png" /></a></div>
				<div class="col-sm-2 col-6"><a href="#"><img class="test-icon" src="${url.resourcesPath}/img/icon.png" /></a></div>
				<div class="col-sm-2 col-6"><a href="#"><img class="test-icon" src="${url.resourcesPath}/img/icon.png" /></a></div>
				<div class="col-sm-2 col-6"><a href="#"><img class="test-icon" src="${url.resourcesPath}/img/icon.png" /></a></div>
				<div class="col-sm-2 col-6"><a href="#"><img class="test-icon" src="${url.resourcesPath}/img/icon.png" /></a></div>
				<div class="col-sm-2 col-6"><a href="#"><img class="test-icon" src="${url.resourcesPath}/img/icon.png" /></a></div>
			</div>
		</div>	
	<#elseif section = "info" >

	</#if>
</@layout.registrationLayout>


