local function run(msg, matches)
 if not is_sudo(msg) then
    return nil
  end
    local member_id
   if msg.to.type == 'channel' then
     print('Admin Demoted ')
channel_set_admin(receiver, 'user#id'..msg.from.id, 0, ok_cb, false)
 return "User "..matches[1].." Has Been Demoted From Admin" 
   else
     return nil
 end  
 end
 
 return {
  description = "add admin",
   usage = "!admin [userid]: set admin",
   patterns = {
     "^[/!]demadmin +(.+)$"
  }, 
   run = run 
 }
