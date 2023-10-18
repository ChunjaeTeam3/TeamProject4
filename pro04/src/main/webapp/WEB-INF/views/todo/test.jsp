<div class='align-items-center d-flex justify-content-between' id='complete'>
    <input type='hidden' id='tdno${list.tdno }' name='tdno' value='${list.tdno}'>
    <input type='hidden' id='status' name='status' value='${list.status}'>
    <label><input type='checkbox' class='option-input radio' id='edit${list.tdno }' onclick='updateState(${list.tdno })'><span class='label-text' id='label'>${list.tdtitle}</span></label>
    <a href='${path}/todo/delete?tdno=${list.tdno}' ><i class='fa-solid fa-trash-can fa-xl'></i></a>
</div>



<div class='align-items-center d-flex justify-content-between' id='complete'>
    <input type='hidden' id='tdno${list.tdno }' name='tdno' value='${list.tdno}'>
    <input type='hidden' id='status' name='status' value='${list.status}'>
    <label><input type='checkbox' class='option-input radio' id='edit${list.tdno }' onclick='updateState(${list.tdno })' checked><span class='label-text' style='text-decoration-line: line-through;'>${list.tdtitle}</span></label>
    <a href='${path}/todo/delete?tdno=${list.tdno}' ><i class='fa-solid fa-trash-can fa-xl'></i></a>
</div>